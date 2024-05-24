package com.huike.common.enums;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum DataScopeEnum{
    /**
     * 全部数据
     */
    ALL(1,"全部");

    /**
     * 本人可见
     */
    OWN(2,"本人可见");

    /**
     * 所在机构可见
     */
    OWN_DEPT(3,"所在机构可见");

    /**
     * 所在机构及其子级可见
     */
    OWN_DEPT_CHILD(4,"所在机构及其子级可见");

    /**
     * 自定义
     */
    CUSTOM(5,"自定义");

    private final int type;
    private final String description;

}
