package com.anzaiyun.handler;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.anzaiyun.bean.Role;
import com.anzaiyun.bean.Store;
import com.anzaiyun.bean.User;
import com.anzaiyun.bean.UserBag;
import com.anzaiyun.bean.ZB;
import com.anzaiyun.service.BagCUID;
import com.anzaiyun.service.BagCUIDImpl;
import com.anzaiyun.service.GetTables;
import com.anzaiyun.service.GetTablesImpl;
import com.anzaiyun.service.GiftCUID;
import com.anzaiyun.service.GiftCUIDImpl;
import com.anzaiyun.service.RoleCUID;
import com.anzaiyun.service.RoleCUIDImpl;
import com.anzaiyun.service.StoreCUID;
import com.anzaiyun.service.StoreCUIDImpl;
import com.anzaiyun.util.TableNames;

import java.lang.reflect.Field;

@Controller
@RequestMapping("MainForm")
public class MainWidgetHandler {
	
	private GetTables getTables = new GetTablesImpl();
	private RoleCUID roleCUID = new RoleCUIDImpl();
	private BagCUID bagCUID = new BagCUIDImpl();
	private StoreCUID storeCUID =  new StoreCUIDImpl();
	private GiftCUID giftCUID = new GiftCUIDImpl();

	
	@RequestMapping("tables")
	public String RoleTable(HttpSession session, ServletRequest request,Model model) {
		User user = (User)session.getAttribute("user");
		int curpage ;
		if(request.getParameter("curpage") == null) {
			curpage = 1;
		}else {
			curpage = Integer.parseInt(request.getParameter("curpage"));
		}		

		List<Role> roles = getTables.getAllRole(user.getLid(),curpage);
		
		Field[] fields = Role.class.getDeclaredFields();
		List<String> roleFliedNames = new ArrayList<String>();
		for(Field field:fields) {
			if(field.getName() != "rnum" && field.getName() != "rid" && field.getName() != "luid") {
				if(field.isAnnotationPresent(TableNames.class)) {
					roleFliedNames.add(field.getAnnotation(TableNames.class).tableName());
				}else {
					roleFliedNames.add(field.getName().toUpperCase());
				}
				
			}
		}
		
		//获取当前记录总共可分多少页
		int rolePage = getTables.getRolePage(user.getLid());
		 
		request.setAttribute("roleTable", roleFliedNames);
		request.setAttribute("roles", roles);
		request.setAttribute("rolePage", rolePage);
		
		List<ZB> zbs = getTables.getAllZB(user.getLid());
				
		fields = ZB.class.getDeclaredFields();
		List<String> ZBFliedNames = new ArrayList<String>();
		for(Field field:fields) {
			if(field.getName() != "zbid" && field.getName() != "luid" && 
			   field.getName() != "zbnum" && field.getName() != "lsfsy") {
				if(field.isAnnotationPresent(TableNames.class)) {
					ZBFliedNames.add(field.getAnnotation(TableNames.class).tableName());
				}else {
					ZBFliedNames.add(field.getName().toUpperCase());
				}
			}
			
		}
		
		request.setAttribute("zbTable", ZBFliedNames);
		request.setAttribute("zbs", zbs);
		
		return "MainWidget/tables.jsp";
	}
	
	@RequestMapping("charts")
	public String charts(HttpSession session, ServletRequest request,Model model) {
		return "MainWidget/charts.jsp";
	}
	
	@RequestMapping("index")
	public String index(HttpSession session, ServletRequest request,ModelAndView model) {
		User user = (User)session.getAttribute("user");
//		从别的页面跳转的时候需要更新session中的背包数据
		List<UserBag> userBags = getTables.getUserBagsByItemid(user.getLid(), "1,2,3,4");
		session.setAttribute("userBags", userBags);
		
		return "MainWidget/index.jsp";
	}
	
	@RequestMapping("forms")
	public String forms(HttpSession session,ServletRequest request,Model model) {
		System.out.println("forms......................");
		User user = (User)session.getAttribute("user");
		List<Role> roles = getTables.getAllRole(user.getLid(),-1);
		request.setAttribute("roles", roles);
		
		//首页添加跳转的需要根据选择的id，获取到详细的信息以便展示
		if(request.getParameter("Roleid")!=null) {
			int roleid = Integer.parseInt(request.getParameter("Roleid"));
			
			Role role = roleCUID.FindRoleFullByRid(roleid);
			request.setAttribute("role", role);
			
			List<ZB> zbs = getTables.getAllZB(user.getLid());
			request.setAttribute("zbs", zbs);
			
			List<com.anzaiyun.bean.Gift> gifts = giftCUID.getGiftsByUid(user.getLid(), -1);
			request.setAttribute("gifts", gifts);
			
		}else {
			request.setAttribute("role", roles.get(0));
			
			List<ZB> zbs = getTables.getAllZB(user.getLid());
			request.setAttribute("zbs", zbs);
			
			List<com.anzaiyun.bean.Gift> gifts = giftCUID.getGiftsByUid(user.getLid(), -1);
			request.setAttribute("gifts", gifts);
		}
		
		
		return "MainWidget/forms.jsp";
	}
	
	@RequestMapping("zbinfo")
	public String zbinfo(HttpSession session,ServletRequest request,Model model) {
		User user = (User)session.getAttribute("user");
		List<ZB> zbs = getTables.getAllZB(user.getLid());
		request.setAttribute("zbs", zbs);
			
		return "MainWidget/ZbInfo.jsp";
	}
	
	@RequestMapping("store")
	public String store(HttpSession session, ServletRequest request,Model model) {
		//有传参说明是购买请求
		if (request.getParameter("sdid") != null && request.getParameter("sdid") != "") {
			int sdid = Integer.parseInt( request.getParameter("sdid"));
			int itemid = Integer.parseInt( request.getParameter("itemid"));
			int count = Integer.parseInt( request.getParameter("count"));
			
			User user = (User) session.getAttribute("user");
			
			int sysl = bagCUID.checkBagMoney(sdid, user.getLid(), itemid, count);
			if (sysl >= 0) {
				int result = storeCUID.updateStoreItemsByid(sdid, itemid, count);
				if(result<1) {
					request.setAttribute("errormsg", "购买商品失败。。。");
				}else {
					result = bagCUID.updateUserBagsByItemid(sdid,user.getLid(), itemid, count);
					request.setAttribute("errormsg", "购买商品成功。。。");
				}
				
			} else {
					request.setAttribute("errormsg", "购买商品失败，货币数量不足。。。");
			}	
		}
		
		
		
		List<Store> GoldStores = storeCUID.getStoreItemsByStoreid(1);
		List<Store> DiamondStores = storeCUID.getStoreItemsByStoreid(2);
		
		Field[] fields = Store.class.getDeclaredFields();
		List<String> FliedNames = new ArrayList<String>();
		for(Field field:fields) {
			if(field.getName() != "sdid" && field.getName() != "itemid" ) {
				TableNames tableName = field.getAnnotation(TableNames.class);
				FliedNames.add(tableName.tableName());
			}
		}
		
		request.setAttribute("FliedNames", FliedNames);
		
		request.setAttribute("GoldStores", GoldStores);
		request.setAttribute("DiamondStores", DiamondStores);
		return "MainWidget/store.jsp";
	}
	
	@RequestMapping("logout")
	public String logout(ServletRequest request,Model model) {
		String message = String.format(
                "注销成功！！稍后为您自动跳到登录页面！！<meta http-equiv='refresh' content='1;url=%s'/>", 
                "/SSMProjectDemo01/welcome/index.html");
        request.setAttribute("message",message);
		return "message/LoginMessage.jsp";
	}
	
	@RequestMapping("usergift")
	public String Gift(HttpSession session, ServletRequest request, Model model) {
		User user = (User)session.getAttribute("user");
		//获取当前页数
		int curpage ;
		if(request.getParameter("curpage") == null) {
			curpage = 1;
		}else {
			curpage = Integer.parseInt(request.getParameter("curpage"));
		}		
		
		List<com.anzaiyun.bean.Gift> gifts = giftCUID.getGiftsByUid(user.getLid(), curpage);
				
		Field[] fields = com.anzaiyun.bean.Gift.class.getDeclaredFields();
		List<String> giftFliedNames = new ArrayList<String>();
		for(Field field:fields) {
			if(field.getName() != "luid" && field.getName() != "giftid" && field.getName() != "lsfsy") {
				if (field.isAnnotationPresent(TableNames.class)) {
					giftFliedNames.add(field.getAnnotation(TableNames.class).tableName());
				} else {
					giftFliedNames.add(field.getName());
				}
				
			}
		}
		int giftpage = giftCUID.getGiftPage(user.getLid());
		request.setAttribute("giftTable", giftFliedNames);
		request.setAttribute("userGifts", gifts);
		request.setAttribute("giftPage", giftpage+1);
		
		return "MainWidget/Gift.jsp";
	}
	
	@RequestMapping("userbag")
	public String UserBag(HttpSession session, ServletRequest request, Model model) {
		User user = (User)session.getAttribute("user");
		
		List<UserBag> userBags = bagCUID.getUserBags(user.getLid());
				
		Field[] fields = UserBag.class.getDeclaredFields();
		List<String> bagFliedNames = new ArrayList<String>();
		for(Field field:fields) {
			if(field.getName() != "luid" && field.getName() != "itemid") {
				if (field.isAnnotationPresent(TableNames.class)) {
					bagFliedNames.add(field.getAnnotation(TableNames.class).tableName());
				} else {
					bagFliedNames.add(field.getName());
				}
				
			}
		}
		
		request.setAttribute("bagTable", bagFliedNames);
		request.setAttribute("userBags", userBags);
		
		return "MainWidget/UserBag.jsp";
	}
	
	@RequestMapping("FightNomoral")
	public String FightNomoral(HttpSession session, ServletRequest request,Model model) {
		User user = (User)session.getAttribute("user");
		List<Role> roles = getTables.getAllRole(user.getLid(),-1);
		request.setAttribute("roles", roles);
		
		return "MainWidget/FightNomoral.jsp";
	}
	
	
	
	
	
	
	
	
	
	

}
