package com.huike.clues.mapper;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.huike.clues.domain.TbClue;
import com.huike.clues.domain.vo.IndexStatisticsVo;
import org.apache.ibatis.annotations.Param;

/**
 * 线索管理Mapper接口
 *
 * @date 2021-04-02
 */
public interface TbClueMapper {

    /**
     * 根据线索管理ID查询线索管理
     *
     * @param id 线索管理ID
     * @return 线索管理信息
     */
    public TbClue selectTbClueById(Long id);

    /**
     * 根据ID数组查询线索信息
     *
     * @param ids 线索ID数组
     * @return 线索列表
     */
    public List<TbClue> selectClueByIds(Long[] ids);

    /**
     * 根据手机号查询线索管理
     *
     * @param phone 手机号
     * @return 线索管理信息
     */
    public TbClue selectTbClueByPhone(String phone);

    /**
     * 查询线索管理列表
     *
     * @param tbClue 线索管理参数
     * @return 线索管理列表
     */
    public List<TbClue> selectTbClueList(TbClue tbClue);

    /**
     * 查询线索报表信息
     *
     * @param tbClue 线索查询条件
     * @return 线索报表列表
     */
    public List<TbClue> selectTbClueForReport(TbClue tbClue);

    /**
     * 查询线索池
     *
     * @param tbClue 线索查询条件
     * @return 线索池列表
     */
    public List<TbClue> selectTbCluePoll(TbClue tbClue);

    /**
     * 新增线索管理
     *
     * @param tbClue 线索管理信息
     * @return 结果
     */
    public int insertTbClue(TbClue tbClue);

    /**
     * 修改线索管理
     *
     * @param tbClue 线索管理信息
     * @return 结果
     */
    public int updateTbClue(TbClue tbClue);

    /**
     * 重置下次跟进时间和状态
     *
     * @param id     线索ID
     * @param status 线索状态
     * @return 结果
     */
    public int resetNextTimeAndStatus(@Param("id") Long id, @Param("status") String status);

    /**
     * 设置转交状态
     *
     * @param id     线索ID
     * @param status 线索状态
     * @return 结果
     */
    public int setTransfer(@Param("id") Long id, @Param("status") String status);

    /**
     * 根据线索管理ID删除线索管理
     *
     * @param id 线索管理ID
     * @return 结果
     */
    public int deleteTbClueById(Long id);

    /**
     * 批量删除线索管理
     *
     * @param ids 需要删除的线索管理ID数组
     * @return 结果
     */
    public int deleteTbClueByIds(Long[] ids);

    /**
     * 根据渠道活动统计线索数量
     *
     * @param tbClue 线索查询条件
     * @return 统计结果
     */
    public Map<String, Object> countByActivity(TbClue tbClue);

    /**
     * 根据条件统计所有用户合同数量
     *
     * @param vo 统计参数
     * @return 统计结果列表
     */
    public List<Map<String, Object>> countAllContractByUser(@Param("indexVo") IndexStatisticsVo vo);

    /**
     * 更新线索结束时间
     *
     * @param id      线索ID
     * @param endTime 结束时间
     */
    public void updateClueEndTimeById(@Param("id") Long id, @Param("endTime") Date endTime);

    /**
     * 获取合同基础信息
     *
     * @param request  统计参数
     * @param now      当前时间
     * @param username 登录用户姓名
     * @return 统计结果
     */
    public Map<String, Object> getcontractsBasicInfo(@Param("indexVo") IndexStatisticsVo request, @Param("now") String now, @Param("username") String username);

    /**
     * 统计线索数量
     *
     * @param request  统计参数
     * @param now      当前时间
     * @param username 登录用户姓名
     * @return 统计结果
     */
    public int getCluesNum(@Param("indexVo") IndexStatisticsVo request, @Param("now") String now, @Param("username") String username);

    /**
     * 漏斗图--线索总数
     *
     * @param beginCreateTime 开始创建时间
     * @param endCreateTime   结束创建时间
     * @return 线索总数
     */
    int getCluesNums(@Param("beginCreateTime") String beginCreateTime, @Param("endCreateTime") String endCreateTime);

    /**
     * 有效线索数
     *
     * @return
     */
    int getEffectiveCluesNums(@Param("beginCreateTime") String beginCreateTime, @Param("endCreateTime") String endCreateTime);

    List<Map<String, Object>> cluesStatistics(String beginCreateTime, String endCreateTime);
}
