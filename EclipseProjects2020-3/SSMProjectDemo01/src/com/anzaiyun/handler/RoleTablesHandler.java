package com.anzaiyun.handler;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.anzaiyun.bean.User;
import com.anzaiyun.service.RoleCUID;
import com.anzaiyun.service.RoleCUIDImpl;

@Controller
@RequestMapping("tables")
public class RoleTablesHandler {
	private RoleCUID roleCUID = new RoleCUIDImpl();
	
	@RequestMapping("delRole")
	public ModelAndView RoleTable(HttpSession session, ServletRequest request,Model model) {
		User user = (User)session.getAttribute("user");
		int rid = Integer.parseInt(request.getParameter("Roleid"));
		boolean delresult =  roleCUID.deleteRoleByRid(user.getLid(),rid);
		
		int curpage ;
		if(request.getParameter("curpage") == null) {
			curpage = 1;
		}else {
			curpage = Integer.parseInt(request.getParameter("curpage"));
		}		
		
  		//使用ModelAndView实现控制器之间的跳转（带参数）
		//https://blog.csdn.net/gangsijay888/article/details/81076362
		return new ModelAndView("redirect:/MainForm/tables?curpage="+curpage);
	}

}
