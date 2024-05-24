package com.huike.business.domain.vo;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class BusinessChangeVO {
    private String   createBy;   //用户名称
    private String   deptName;    //部门名称
    private Long   num;        //转化数量
    private BigDecimal radio;       //转化率
}