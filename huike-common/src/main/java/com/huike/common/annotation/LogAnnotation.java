package com.huike.common.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 自定义注解练习
 * 声明在方法上的注解
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface LogAnnotation {

    /**
     * 日志内容
     * @return
     */
    String value() default "";

    /**
     * 操作方类型
     * 0-未知来源，1-pc端，2-小程序端，3-其他
     */
    int type() default 0;
}
