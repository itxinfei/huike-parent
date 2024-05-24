package com.huike.common.utils;

import com.alibaba.fastjson.JSON;
import com.huike.common.annotation.LogAnnotation;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Slf4j
@Component
@Aspect
public class OpenLogUtil {

    /**
     * 配置切入点：注释中引号的部分为自己创建的注解的路径，可以通过该注解请求到切入点中去。
     */
    @Pointcut("@annotation(com.example.BootDemo.Annotation.LogAnnotation)")
    public void logPointcut() {
        // 该方法无方法体,主要为了让同类中其他方法使用此切入点
    }

    /**
     * 配置环绕通知，使用自定义方法上注册的切入点。
     */
    @Around("logPointcut()")
    public Object logAround(ProceedingJoinPoint joinPoint) throws Throwable {
        //前置
        long startTime = System.currentTimeMillis();
        /**
         * 环绕通知=前置+目标方法执行+后置，proceed方法就是用于启动目标方法执行的
         * Proceedingjoinpoint 继承了 JoinPoint。是在JoinPoint的基础上暴露出 proceed 这个方法。proceed很重要，这个是aop代理链执行的方法。
         * 暴露出这个方法，就能支持 aop:around 这种切面（而其他的几种切面只需要用到JoinPoint，，这也是环绕通知和前置、后置通知方法的一个最大区别。这跟切面类型有关）
         * */
        Object result = joinPoint.proceed();
        //后置
        long time = System.currentTimeMillis() - startTime;
        recordLog(joinPoint, time);
        return result;
    }

    /**
     * 记录日志
     */
    public void recordLog(ProceedingJoinPoint proceedingJoinPoint, long time) {
        //getSignature());是获取到这样的信息 :修饰符+ 包名+组件名(类名) +方法名
        MethodSignature methodSignature = (MethodSignature) proceedingJoinPoint.getSignature();
        Method method = methodSignature.getMethod();
        //getAnnotation:方法如果存在这样的注释，则返回指定类型的元素的注释，否则为null
        LogAnnotation logAnnotation = method.getAnnotation(LogAnnotation.class);
        log.info("==============================开始记录日志===============================");
        log.info("value:{}", logAnnotation.value());
        log.info("type:{}", logAnnotation.type());
        //proceedingJoinPoint.getTarget():获取切入点所在目标对象
        String className = proceedingJoinPoint.getTarget().getClass().getName();
        String methodName = methodSignature.getName();
        log.info("请求的方法是：{}", className + "." + methodName + "()");
        //这里返回的是切入点方法的参数列表
        Object[] args = proceedingJoinPoint.getArgs();
        String params = JSON.toJSONString(args.length == 0 ? "" : args[0]);
        log.info("请求的参数是:{}", params);
        log.info("执行时间总共为:{}", time);
        log.info("=================================end===================================");
    }
}

