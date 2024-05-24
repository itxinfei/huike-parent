package com.huike.common.advice;
package com.huike.common.advice;

import com.huike.common.utils.LogPrint;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

@Slf4j
@Aspect
@Component
public class LogAdvice {

    /**
     * 配置切入点
     */
    @Pointcut("@annotation(com.huike.common.annotation.Log)")
    public void log() {
    }

    /**
     * 环绕通知
     *
     * @param pjp
     * @return
     * @throws Throwable
     */
    @Around("log()")
    public Object logAround(ProceedingJoinPoint pjp) throws Throwable {
        Long startTime = System.currentTimeMillis();

        // 执行原始方法
        Object proceed = pjp.proceed();

        //记录日志
        Long endTime = System.currentTimeMillis();
        Long time = endTime - startTime;
        logOut(pjp, time,proceed);

        return proceed;
    }

    /**
     * 记录日志的方法
     *
     * @param pjp
     * @param time
     */
    private void logOut(ProceedingJoinPoint pjp, Long time,Object proceed) {
        Signature signature = pjp.getSignature();
        String typeName = signature.getDeclaringTypeName();//获取包名
        String methondName = signature.getName();//获取执行的方法名

        Date date = new Date();
        String format = new SimpleDateFormat("yyyy-HH-dd HH:mm:ss").format(date);
        Object[] args = pjp.getArgs();//获取参数

        RequestAttributes requestAttribute = RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = ((ServletRequestAttributes) requestAttribute).getRequest();
        String requestURL = request.getRequestURL().toString();
        String contextPath = request.getContextPath();

        if (proceed == null){
            proceed = "";
        }else {
            proceed = proceed.toString();
        }

        log.info("=======================" + format + "=========================");
        log.info("请求路径是：{}", requestURL);
        log.info("请求包结构是：{}", typeName);
        log.info("请求访问的方法是：{}", methondName);
        log.info("携带的参数是：{}", Arrays.toString(args));
        log.info("返回的结果是：{}", proceed);
        log.info("执行耗时：{} 毫秒", time);
        log.info("=============================================================");

        List<String> list = new ArrayList<>();
        list.add("=======================" + format + "=========================");
        list.add("请求路径是：" + requestURL);
        list.add("请求包结构是：" + typeName);
        list.add("请求访问的方法是：" + methondName);
        list.add("携带的参数是：" + Arrays.toString(args));
        list.add("返回的结果是：" + proceed);
        list.add("执行耗时：" + time + "毫秒");
        list.add("=============================================================");
        LogPrint.print(list,"D:\\huike.log");

    }
}
