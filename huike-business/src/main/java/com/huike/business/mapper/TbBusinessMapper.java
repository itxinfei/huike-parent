package com.huike.business.mapper;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.huike.business.domain.TbBusiness;
import com.huike.business.domain.vo.BusinessChangeVO;
import com.huike.clues.domain.vo.IndexStatisticsVo;
import org.apache.ibatis.annotations.Param;

/**
 * 商机Mapper接口
 *
 * @date 2021-04-25
 */
public interface TbBusinessMapper {
    /**
     * 根据商机ID查询商机详细信息
     *
     * @param id 商机ID
     * @return 返回对应的商机信息
     */
    public TbBusiness selectTbBusinessById(Long id);

    /**
     * 查询商机列表
     *
     * @param tbBusiness 包含查询条件的商机对象
     * @return 返回符合条件的商机集合
     */
    public List<TbBusiness> selectTbBusinessList(TbBusiness tbBusiness);

    /**
     * 查询商机池
     *
     * @param tbBusiness
     * @return
     */
    public List<TbBusiness> selectTbBusinessPool(TbBusiness tbBusiness);

    /**
     * 新增商机信息
     *
     * @param tbBusiness 需要新增的商机对象
     * @return 返回影响的行数
     */
    public int insertTbBusiness(TbBusiness tbBusiness);

    /**
     * 根据商机对象修改商机信息
     *
     * @param tbBusiness 需要修改的商机对象
     * @return 返回影响的行数
     */
    public int updateTbBusiness(TbBusiness tbBusiness);

    /**
     * 根据商机ID删除商机信息
     *
     * @param id 商机ID
     * @return 返回影响的行数
     */
    public int deleteTbBusinessById(Long id);

    /**
     * 批量删除商机信息
     *
     * @param ids 需要删除的商机ID数组
     * @return 返回影响的行数
     */
    public int deleteTbBusinessByIds(Long[] ids);

    /**
     * 根据商机ID和状态重置商机的下一步状态和时间
     *
     * @param id     商机ID
     * @param status 新的状态
     * @return 返回影响的行数
     */
    public int resetNextTimeAndStatus(@Param("id") Long id, @Param("status") String status);

    // 设置转交状态
    public int setTransfer(@Param("id") Long id, @Param("status") String status);

    /**
     * 更新商机结束时间
     *
     * @param id      商机ID
     * @param endTime 结束时间
     */
    public void updateBusinessEndTimeById(@Param("id") Long id, @Param("endTime") Date endTime);

    /**
     * 查询指定时间段内的商机数量
     *
     * @param beginCreateTime 开始创建时间
     * @param endCreateTime   结束创建时间
     * @return 返回该时间段内的商机数量
     */
    int getBusinessNums(@Param("beginCreateTime") String beginCreateTime, @Param("endCreateTime") String endCreateTime);


    int getAll(String beginCreateTime, String endCreateTime);

    List<BusinessChangeVO> getVOlist(String beginCreateTime, String endCreateTime);
}
