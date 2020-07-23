package com.anzaiyun.aop;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import com.anzaiyun.bean.User;

@Component
@Aspect
public class MainWidgetHandlerAOP {
	
	@Pointcut(value = "execution(* com.anzaiyun.handler.MainWidgetHandler.*(..))")
	public void HandlerAOP() {
		
	}
	
	/**
	 * 用于权限控制，当当前session中不存在user信息时，需要退出登录
	 * @param jp
	 * @return
	 */
	@Around(value = "HandlerAOP()")
	public Object BeforeHandler(ProceedingJoinPoint jp) {
		//获取传入的参数
		Object[] objects = jp.getArgs();
		//保存切点返回信息
		Object obj = null;
		ServletRequest request = null;
		boolean iscontinue = false;
		for(Object object : objects) {
			if(object.toString().indexOf(".session.")>0)
			{
				HttpSession session = (HttpSession) object;
				User user = (User)session.getAttribute("user");
				if (user != null) {
					iscontinue = true;
				}
			}else if(object.toString().indexOf(".Request")>0) {
				request = (ServletRequest) object;
			}
//			查看打印出来的参数信息
			System.out.println(object.toString());
			
		}
		if (iscontinue) {
			try {
				obj = jp.proceed();
				
			} catch (Throwable e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return obj;
		}else {
			String message = String.format(
	                "登录状态失效！！稍后为您自动跳到登录页面！！<meta http-equiv='refresh' content='2;url=%s'/>", 
	                "/SSMProjectDemo01/welcome/index.html");
	        request.setAttribute("message",message);
			return "message/LoginMessage.jsp";
		}
		
		
	}

}
