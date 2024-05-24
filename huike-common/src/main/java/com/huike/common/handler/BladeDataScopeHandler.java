package com.huike.common.handler;


import com.huike.common.enums.DataScopeEnum;
import lombok.RequiredArgsConstructor;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/**
 * 默认数据权限规则
 * 获取过滤sql
 * @param mapperId    数据查询类
 * @param dataScope   数据权限类
 * @param bladeUser   当前用户信息
 * @param originalSql 原始Sql
 * @author Chill
 */
@RequiredArgsConstructor
public class BladeDataScopeHandler implements DataScopeHandler {

    private final ScopeModelHandler scopeModelHandler;

    @Override
    public String sqlCondition(String mapperId, DataScopeModel dataScope, BladeUser bladeUser, String originalSql) {

        //数据权限资源编号
        String code = dataScope.getResourceCode();

        //根据mapperId从数据库中获取对应模型
        DataScopeModel dataScopeDb = scopeModelHandler.getDataScopeByMapper(mapperId, bladeUser.getRoleId());

        //mapperId配置未取到则从数据库中根据资源编号获取
        if (dataScopeDb == null && StringUtil.isNotBlank(code)) {
            dataScopeDb = scopeModelHandler.getDataScopeByCode(code);
        }

        //未从数据库找到对应配置则采用默认
        dataScope = (dataScopeDb != null) ? dataScopeDb : dataScope;

        //判断数据权限类型并组装对应Sql
        Integer scopeRule = Objects.requireNonNull(dataScope).getScopeType();
        DataScopeEnum scopeTypeEnum = DataScopeEnum.of(scopeRule);
        List<Long> ids = new ArrayList<>();
        String whereSql = "where scope.{} in ({})";
        //需要注意的是，下面的这个判断，如果角色是ADMINISTRATOR的话也是不执行直接返回null的，我就是在这里掉坑
        if (DataScopeEnum.ALL == scopeTypeEnum || StringUtil.containsAny(bladeUser.getRoleName(), RoleConstant.ADMINISTRATOR)) {
            return null;
        } else if (DataScopeEnum.CUSTOM == scopeTypeEnum) {
            whereSql = PlaceholderUtil.getDefaultResolver().resolveByMap(dataScope.getScopeValue(), BeanUtil.toMap(bladeUser));
        } else if (DataScopeEnum.OWN == scopeTypeEnum) {
            ids.add(bladeUser.getUserId());
        } else if (DataScopeEnum.OWN_DEPT == scopeTypeEnum) {
            ids.addAll(Func.toLongList(bladeUser.getDeptId()));
        } else if (DataScopeEnum.OWN_DEPT_CHILD == scopeTypeEnum) {
            List<Long> deptIds = Func.toLongList(bladeUser.getDeptId());
            ids.addAll(deptIds);
            deptIds.forEach(deptId -> {
                List<Long> deptIdList = scopeModelHandler.getDeptAncestors(deptId);
                ids.addAll(deptIdList);
            });
        }
        return StringUtil.format(" select {} from ({}) scope " + whereSql, Func.toStr(dataScope.getScopeField(), "*"), originalSql, dataScope.getScopeColumn(), StringUtil.join(ids));
    }

}