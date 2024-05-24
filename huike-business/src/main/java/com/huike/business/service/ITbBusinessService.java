package com.huike.business.service;

import java.util.List;
import java.util.Map;

import com.huike.business.domain.TbBusiness;

/**
 * 商机Service接口
 *
 * @author wgl
 * @date 2021-04-25
 */
public interface ITbBusinessService {
    /**
     * 根据商机ID查询商机信息
     *
     * @param id 商机ID
     * @return 返回查询到的商机信息
     */
    public TbBusiness selectTbBusinessById(Long id);

    /**
     * 查询商机列表
     *
     * @param tbBusiness 商机实体，包含查询条件
     * @return 返回符合条件的商机集合
     */
    public List<TbBusiness> selectTbBusinessList(TbBusiness tbBusiness);

    /**
     * 查询商机池
     *
     * @param tbBusiness 商机实体，包含查询条件
     * @return 返回商机池中的商机集合
     */
    public List<TbBusiness> selectTbBusinessPool(TbBusiness tbBusiness);

    /**
     * 新增商机
     *
     * @param tbBusiness 需要新增的商机信息
     * @return 返回新增结果，通常为影响的行数
     */
    public int insertTbBusiness(TbBusiness tbBusiness);

    /**
     * 修改商机信息
     *
     * @param tbBusiness 需要修改的商机信息
     * @return 返回修改结果，通常为影响的行数
     */
    public int updateTbBusiness(TbBusiness tbBusiness);

    /**
     * 批量删除商机
     *
     * @param ids 需要删除的商机ID数组
     * @return 返回删除结果，通常为影响的行数
     */
    public int deleteTbBusinessByIds(Long[] ids);

    /**
     * 根据商机ID删除商机信息
     *
     * @param id 需要删除的商机ID
     * @return 返回删除结果，通常为影响的行数
     */
    public int deleteTbBusinessById(Long id);

    /**
     * 分配商机
     *
     * @param clueIds 需要分配的线索ID数组
     * @param userId  分配给的用户ID
     * @return 返回分配结果，通常为字符串描述
     */
    public String assign(Long[] clueIds, Long userId);

    /**
     * 获取商机
     *
     * @param clueIds 需要获取的线索ID数组
     * @param userId  获取的用户ID
     * @return 返回获取结果，通常为字符串描述
     */
    public String gain(Long[] clueIds, Long userId);

    /**
     * 转换商机阶段
     *
     * @param clueId 需要转换的线索ID
     * @return 返回转换结果，通常为影响的行数
     */
    public int changeBusiness(Long clueId);

    /**
     * 更新商机状态
     *
     * @param id 商机ID
     * @param status 新的状态
     * @return 返回更新结果，通常为影响的行数
     */
    public int updateStatus(Long id, String status);
}

