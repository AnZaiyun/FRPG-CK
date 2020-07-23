package com.anzaiyun.handler;

import java.util.List;

import javax.servlet.ServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.anzaiyun.bean.User;
import com.anzaiyun.bean.UserBag;
import com.anzaiyun.service.GetTables;
import com.anzaiyun.service.GetTablesImpl;
import com.anzaiyun.service.UserLogin;
import com.anzaiyun.service.UserLoginImpl;

@Controller
@RequestMapping("welcome/LoginAndOut")
@SessionAttributes(value = {"user","userBags","rolePage"})
public class LoginAndOutHandler {
	
	private UserLogin UserLogin = new UserLoginImpl();
	private GetTables getTables = new GetTablesImpl();
	
	@RequestMapping("login")
	public String login(ServletRequest request,Model model) {
		String name = request.getParameter("uname");
		String pwd = request.getParameter("upwd");		
		
		User user = UserLogin.login(name, pwd);
		if (user != null) {
			List<UserBag> userBags = getTables.getUserBagsByItemid(user.getLid(), "1,2,3,4,5");
				
			model.addAttribute("user",user); //通过SessionAttributes("user")注解把属性放到session中
			model.addAttribute("userBags",userBags);
//			http://localhost:8888/SSMProjectDemo01/MainWidget/index.jsp
//			return "redirect:/MainWidget/index.jsp";  //采用重定向方式
			return "/MainWidget/index.jsp";
		}else {
			String message = String.format(
	                "登录失败！！2秒后为您自动跳到登录页面！！<meta http-equiv='refresh' content='1;url=%s'/>", 
	                "/SSMProjectDemo01/welcome/index.html");
	        request.setAttribute("message",message);
			return "message/LoginMessage.jsp";
		}
		
	}
	
	@RequestMapping("register")
	public String register() {
		
		return "login/register.html";
		
	}
	
	@RequestMapping("addUser")
	public String addUser(ServletRequest request,Model model) {
		String name = request.getParameter("uname");
		String pwd = request.getParameter("upwd");
		
		boolean result = UserLogin.register( new User(name, pwd));
		
		
		if (result){
			String message = String.format(
	                "注册成功！！3秒后为您自动跳到登录页面！！<meta http-equiv='refresh' content='3;url=%s'/>", 
	                "/SSMProjectDemo01/welcome/index.html");
	        request.setAttribute("message",message);
			return "message/LoginMessage.jsp";
		}else {
			String message = String.format(
	                "注册失败！！3秒后为您自动跳到登录页面！！<meta http-equiv='refresh' content='3;url=%s'/>", 
	                "/SSMProjectDemo01/welcome/index.html");
	        request.setAttribute("message",message);
			return "message/LoginMessage.jsp";
		}
	}

}
