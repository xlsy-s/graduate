package com.graduate.unit;


import com.graduate.controller.ForgetController;
import com.graduate.controller.LogAopController;
import com.graduate.controller.LoginController;
import com.graduate.mapper.LogAopMapper;
import com.graduate.pojo.SysLogPojo;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.Date;

/**
 * 面向切面 日志的使用
 */
@Component
@Aspect
public class LogAop {

    @Autowired
    private HttpServletRequest request;
    @Autowired
    private LogAopMapper logAopMapper;

    // 开始时间
    private Date startTime;
    // 访问的类
    private Class aClass;
    // 访问的方法
    private Method method;


    // 前置通知 主要是获取执行的时间，执行的类与方法
    @Before("execution(* com.graduate.controller.*.*(..))")
    public void beFore(JoinPoint joinPoint) throws NoSuchMethodException {
        startTime = new Date(); // 获取时间
        aClass = joinPoint.getTarget().getClass(); // 获取具体类
        String name = joinPoint.getSignature().getName(); // 获取方法名
        // 获取具体的method对象
        Object[] args = joinPoint.getArgs();// 获取方法的参数
        if(args.length==0||args==null) {
            method = aClass.getMethod(name); // 此时只能获取无参方法
        }else {
            Class[] classArgs = new Class[args.length];
            for (int i=0;i<args.length;i++){
                classArgs[i] = args[i].getClass();
            }
            method =  aClass.getMethod(name,classArgs);
        }
    }
    // 后置通知
    @After("execution(* com.graduate.controller.*.*(..))")
    public void After(JoinPoint joinPoint){
        // 获取访问时长
        Long endTime =  new Date().getTime()-startTime.getTime();
        // 获取url
        String url = null;
        if(aClass!=null && method!=null &&
                aClass!= LogAop.class && aClass!= LogAopController.class
                && aClass != LoginController.class && aClass!= ForgetController.class
        ){
            // 获取类上的RequestMapping中的值
            RequestMapping classAnnotation = (RequestMapping) aClass.getAnnotation(RequestMapping.class);
            if(classAnnotation!=null){
                String[] classValue = classAnnotation.value();
                // 获取方法上的注解值
                Annotation[] methodAnnotations = method.getAnnotations();
                String methodAnnotationName = getMethodAnnotationName(methodAnnotations);
                url = classValue[0]+methodAnnotationName;
            }
        }

        // 获取访问的ip地址
        String ip = request.getRemoteAddr();

        if (url != null){
            //获取当前操作的用户
            SecurityContext context = SecurityContextHolder.getContext();//从上下文中获了当前登录的用户
            User user = (User) context.getAuthentication().getPrincipal();
            String username = user.getUsername();
            SysLogPojo logPojo = new SysLogPojo();
            // 封装数据
            logPojo.setUrl(url);
            logPojo.setVisitTime(startTime);
            logPojo.setExecutionTime(endTime);
            logPojo.setUsername(username);
            logPojo.setIp(ip);
            logPojo.setMethod("[类名] " + aClass.getName() + "[方法名] " + method.getName());
            logAopMapper.saveLog(logPojo);
        }
    }

    // 封装获取方法注解的值
    private String getMethodAnnotationName(Annotation[] methodAnnotations){
        String[] methodValue = null;
        if(methodAnnotations[0] != null){
            if(methodAnnotations[0] instanceof GetMapping){
                GetMapping methodAnnotation = (GetMapping) methodAnnotations[0];
                methodValue = methodAnnotation.value();
            }else {
                PostMapping methodAnnotation = (PostMapping) methodAnnotations[0];
                methodValue = methodAnnotation.value();
            }
        }
        return methodValue[0];
    }
}
