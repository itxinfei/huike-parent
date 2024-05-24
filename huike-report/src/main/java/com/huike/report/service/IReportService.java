package com.huike.report.service;

import java.util.List;
import java.util.Map;

import com.huike.business.domain.vo.BusinessChangeVO;
import com.huike.clues.domain.vo.IndexStatisticsVo;
import com.huike.report.domain.vo.*;
import org.apache.ibatis.annotations.Param;

import com.huike.clues.domain.TbActivity;
import com.huike.clues.domain.TbClue;
import com.huike.contract.domain.TbContract;

/**
 * 报表服务接口，提供统计和报表相关的业务操作
 */
public interface IReportService {

    /**
     * 新增客户统计
     *
     * @param beginCreateTime 开始时间
     * @param endCreateTime   结束时间
     * @return 返回新增客户统计的折线图数据
     */
    public LineChartVO contractStatistics(String beginCreateTime, String endCreateTime);


    /**
     * 客户统计报表
     *
     * @param tbContract 客户查询条件
     * @return 返回符合查询条件的客户统计列表
     */
    public List<TbContract> contractReportList(TbContract tbContract);

    /**
     * 销售统计
     *
     * @param beginCreateTime 开始时间
     * @param endCreateTime   结束时间
     * @return 返回销售统计的折线图数据
     */
    public LineChartVO salesStatistics(String beginCreateTime, String endCreateTime);


    /**
     * 销售统计部门报表
     *
     * @param beginCreateTime 开始时间
     * @param endCreateTime   结束时间
     * @return 返回按部门统计的销售数据列表
     */
    public List<Map<String, Object>> deptStatisticsList(String beginCreateTime, String endCreateTime);

    /**
     * 销售统计渠道报表
     *
     * @param beginCreateTime 开始时间
     * @param endCreateTime   结束时间
     * @return 返回按渠道统计的销售数据列表
     */
    public List<Map<String, Object>> channelStatisticsList(String beginCreateTime, String endCreateTime);

    /**
     * 销售统计归属人报表
     *
     * @param beginCreateTime 开始时间
     * @param endCreateTime   结束时间
     * @return 返回按归属人统计的销售数据列表
     */
    public List<Map<String, Object>> ownerShipStatisticsList(String beginCreateTime, String endCreateTime);


    /**
     * 渠道统计
     *
     * @param beginCreateTime 开始时间
     * @param endCreateTime   结束时间
     * @return 返回渠道统计的数据列表
     */
    public List<Map<String, Object>> chanelStatistics(String beginCreateTime, String endCreateTime);


    /**
     * 活动统计
     *
     * @param beginCreateTime 开始时间
     * @param endCreateTime   结束时间
     * @return 返回活动统计的数据列表
     */
    public List<Map<String, Object>> activityStatistics(String beginCreateTime, String endCreateTime);


    /**
     * 案线索引统计
     *
     * @param clue 案线索引查询条件
     * @return 返回符合查询条件的案线索引统计列表
     */
    public List<TbClue> cluesStatisticsList(TbClue clue);

    /**
     * 活动渠道统计
     *
     * @param activity 活动查询条件
     * @return 返回活动渠道统计的数据列表
     */
    public List<ActivityStatisticsVo> activityStatisticsList(TbActivity activity);


    /**
     * 获取综合指数信息
     *
     * @param request 综合指数查询条件
     * @return 返回综合指数信息
     */
    public IndexVo getIndex(IndexStatisticsVo request);


    /**
     * 销售统计指数报表
     *
     * @param request 销售统计查询条件
     * @return 返回销售统计指数的数据列表
     */
    public List<Map<String, Object>> salesStatisticsForIndex(IndexStatisticsVo request);


    /**
     * 首页基本数据展示
     *
     * @param beginCreateTime 开始时间
     * @param endCreateTime   结束时间
     * @return 返回首页基本数据展示的视图对象
     */
    IndexBaseInfoVO getBaseInfo(String beginCreateTime, String endCreateTime);

    /**
     * 薄弱环节地图信息
     *
     * @param beginCreateTime 开始时间
     * @param endCreateTime   结束时间
     * @return 返回薄弱环节地图的视图对象
     */
    VulnerabilityMapVo getVulnerabilityMap(String beginCreateTime, String endCreateTime);

    /**
     * 业务变化统计
     *
     * @param beginCreateTime 开始时间
     * @param endCreateTime   结束时间
     * @param deptId          部门ID
     * @return 返回业务变化统计的数据列表
     */
    List<BusinessChangeVO> businessChangeStatistics(String beginCreateTime, String endCreateTime, Integer deptId);

    /**
     * 销售统计
     *
     * @param beginCreateTime 开始时间
     * @param endCreateTime   结束时间
     * @param deptId          部门ID
     * @return 返回销售统计的数据列表
     */
    List<BusinessChangeVO> salesStatistic(String beginCreateTime, String endCreateTime, Integer deptId);

    IndexTodoInfoVO getTodoInfo(String beginCreateTime, String endCreateTime);

    List<PieVO> subjectStatistics(String beginCreateTime, String endCreateTime);

    LineChartVO cluesStatistics(String beginCreateTime, String endCreateTime);
}

