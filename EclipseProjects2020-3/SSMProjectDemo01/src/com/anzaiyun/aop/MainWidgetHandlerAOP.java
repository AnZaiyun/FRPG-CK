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
	 * ����Ȩ�޿��ƣ�����ǰsession�в�����user��Ϣʱ����Ҫ�˳���¼
	 * @param jp
	 * @return
	 */
	@Around(value = "HandlerAOP()")
	public Object BeforeHandler(ProceedingJoinPoint jp) {
		//��ȡ����Ĳ���
		Object[] objects = jp.getArgs();
		//�����е㷵����Ϣ
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
//			�鿴��ӡ�����Ĳ�����Ϣ
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
	                "��¼״̬ʧЧ�����Ժ�Ϊ���Զ�������¼ҳ�棡��<meta http-equiv='refresh' content='2;url=%s'/>", 
	                "/SSMProjectDemo01/welcome/index.html");
	        request.setAttribute("message",message);
			return "message/LoginMessage.jsp";
		}
		
		
	}

}
