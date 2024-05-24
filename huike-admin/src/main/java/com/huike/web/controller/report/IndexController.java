package com.huike.web.controller.report;


import com.huike.business.domain.vo.BusinessChangeVO;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.huike.common.core.domain.AjaxResult;
import com.huike.report.service.IReportService;

import java.util.List;

@RestController
@RequestMapping("/index")
public class IndexController {

    @Autowired
    private IReportService reportService;

    /**
     * 首页--基础数据统计
     *
     * @param beginCreateTime
     * @param endCreateTime
     * @return
     */
    @GetMapping("/getBaseInfo")
    public AjaxResult getBaseInfo(@RequestParam("beginCreateTime") String beginCreateTime, @RequestParam("endCreateTime") String endCreateTime) {
        return AjaxResult.success(reportService.getBaseInfo(beginCreateTime, endCreateTime));
    }

    //商机转换龙虎榜
    // http://localhost/dev-api/index/businessChangeStatistics?beginCreateTime=2022-09-05&endCreateTime=2022-10-05&deptId=100
    @GetMapping("/businessChangeStatistics")
    public AjaxResult businessChangeStatistics(@Param("beginCreateTime") String beginCreateTime, @Param("endCreateTime") String endCreateTime, @Param("deptId") Integer deptId) {
        List<BusinessChangeVO> list = reportService.businessChangeStatistics(beginCreateTime, endCreateTime, deptId);
        return AjaxResult.success(list);
    }

    //线索转换龙虎榜
    //http://localhost/dev-api/index/salesStatistic?beginCreateTime=2022-09-05&endCreateTime=2022-10-05&deptId=100
    @GetMapping("/salesStatistic")
    public AjaxResult salesStatistic(@Param("beginCreateTime") String beginCreateTime, @Param("endCreateTime") String endCreateTime, @Param("deptId") Integer deptId) {
        List<BusinessChangeVO> list = reportService.salesStatistic(beginCreateTime, endCreateTime, deptId);
        return AjaxResult.success(list);
    }

    /**
     * 首页--待办数据统计接口
     * @param beginCreateTime
     * @param endCreateTime
     * @return
     */
    // http://localhost/dev-api/index/getTodoInfo?beginCreateTime=2022-09-04&endCreateTime=2022-10-04
    @GetMapping("/getTodoInfo")
    public AjaxResult getTodoInfo(@RequestParam("beginCreateTime") String beginCreateTime,
                                  @RequestParam("endCreateTime") String endCreateTime){

        return AjaxResult.success(reportService.getTodoInfo(beginCreateTime,endCreateTime));
    }

}