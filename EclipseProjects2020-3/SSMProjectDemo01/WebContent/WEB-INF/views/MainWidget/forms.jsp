<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.anzaiyun.service.RoleCUIDImpl" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
  <head> 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/MainWidget/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/MainWidget/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Custom Font Icons CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/MainWidget/css/font.css">
    <!-- Google fonts - Muli-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/MainWidget/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/MainWidget/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/MainWidget/img/favicon.ico">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <script type="text/javascript" src = "${pageContext.request.contextPath }/MainWidget/js/jquery-3.5.1.js"></script>
    <script id="RoleIdChange">
		function RoleIdChange(rid)
		{ 	
			var param = {"rid" : rid,
					"uid":${sessionScope.user.lid}}
			$.ajax({
				url:"/SSMProjectDemo01/RoleInfo/RoleIdChange",
				type:"post",
				data:param,
				dataType:"json",
				success:function(result,testStatus){
					//使用jquery
					//$("#rname").val(result["rname"]);
					//使用javascript
					document.getElementById('rname').value=result["rname"];	
					document.getElementById('rlevel').value=result["rlevel"];
					document.getElementById('expstr').value=result["expstr"];	
					document.getElementById('rare').value=result["rare"];	
					document.getElementById('hp').value=result["hp"];	
					document.getElementById('mp').value=result["mp"];	
					document.getElementById('atk').value=result["atk"];	
					document.getElementById('def').value=result["def"];	
				
					if(result["zbid1"] == 0){
						document.getElementById('ZbSelectBox1').value = '';
					}else{
						document.getElementById('ZbSelectBox1').value=result["zbid1"];
					}
					if(result["zbid2"] == 0){
						document.getElementById('ZbSelectBox2').value = '';
					}else{
						document.getElementById('ZbSelectBox2').value=result["zbid2"];	
					}
					if(result["giftid1"] == 0){
						document.getElementById('GiftSelectBox1').value = '';
					}else{
						document.getElementById('GiftSelectBox1').value=result["giftid1"];	
					}
				},
				error:function(xhr,errorMessage,e){
					alert(errorMessage);
				}
				
			});
		}
	</script>
	<script id="RoleZbIdChange">
		function RoleZbIdChange(zbid)
		{ 
			var param = {"rid" : document.getElementById('RoleSelectBox').value,
						 "zbid1": document.getElementById('ZbSelectBox1').value,
						 "zbid2": document.getElementById('ZbSelectBox2').value}
			
			
			if(document.getElementById('ZbSelectBox1').value == document.getElementById('ZbSelectBox2').value  && 
					document.getElementById('ZbSelectBox1').value != ''){
				document.getElementById('ZbSelectBox1').value = '';
				document.getElementById('ZbSelectBox2').value = '';
				alert("不可选择重复的装备数据！");
				return;
			}
			
			
			$.ajax({
				url:"/SSMProjectDemo01/RoleInfo/RoleZbIdChange",
				type:"post",
				data:param,
				dataType:"json",
				success:function(result,testStatus){
					//使用jquery
					//$("#rname").val(result["rname"]);
					//使用javascript
					document.getElementById('hp').value=result["hp"];	
					document.getElementById('mp').value=result["mp"];	
					document.getElementById('atk').value=result["atk"];	
					document.getElementById('def').value=result["def"];	
			
				},
				error:function(xhr,errorMessage,e){
					alert(errorMessage);
				}
				
			});
		}
	</script>
	<script id="RoleGiftIdChange">
		function RoleGiftIdChange(giftid)
		{ 
			var param = {"rid" : document.getElementById('RoleSelectBox').value,
						 "giftid1": document.getElementById('GiftSelectBox1').value}
			
			
			$.ajax({
				url:"/SSMProjectDemo01/RoleInfo/RoleGiftIdChange",
				type:"post",
				data:param,
				dataType:"json",
				success:function(result,testStatus){
					//使用jquery
					//$("#rname").val(result["rname"]);
					//使用javascript
					document.getElementById('hp').value=result["hp"];	
					document.getElementById('mp').value=result["mp"];	
					document.getElementById('atk').value=result["atk"];	
					document.getElementById('def').value=result["def"];	
					if (result["giftid"] != result["giftid_old"]){
						document.getElementById('oldhp').innerHTML = result["hp_old"];	
						document.getElementById('oldmp').innerHTML = result["mp_old"];	
						document.getElementById('oldatk').innerHTML = result["atk_old"];	
						document.getElementById('olddef').innerHTML = result["def_old"];	
					}else{
						document.getElementById('oldhp').innerHTML = "";	
						document.getElementById('oldmp').innerHTML = "";	
						document.getElementById('oldatk').innerHTML = "";	
						document.getElementById('olddef').innerHTML = "";	
					}
			
				},
				error:function(xhr,errorMessage,e){
					alert(errorMessage);
				}
				
			});
		}
	</script>
	<!-- 保存更改 -->
	<script id="SaveChange">
		function SaveChange()
		{ 
			var param = {"uid":${sessionScope.user.lid},
					 "rid" : document.getElementById('RoleSelectBox').value,
					 "zbid1": document.getElementById('ZbSelectBox1').value,
					 "zbid2": document.getElementById('ZbSelectBox2').value,
					 "giftid1": document.getElementById('GiftSelectBox1').value
					 }
			 
			$.ajax({
				url:"/SSMProjectDemo01/RoleInfo/SaveChangeRole",
				type:"post",
				dataType:"json",
				data:param,
				success:function(result,testStatus){
					//使用jquery
					alert("保存成功");
				},
				error:function(xhr,errorMessage,e){
					alert(e);
				}
				
			});
		}
    </script>
  </head>
  <body>
    <header class="header">   
      <nav class="navbar navbar-expand-lg">
        <div class="search-panel">
          <div class="search-inner d-flex align-items-center justify-content-center">
            <div class="close-btn">Close <i class="fa fa-close"></i></div>
            <form id="searchForm" action="#">
              <div class="form-group">
                <input type="search" name="search" placeholder="What are you searching for...">
                <button type="submit" class="submit">Search</button>
              </div>
            </form>
          </div>
        </div>
        <div class="container-fluid d-flex align-items-center justify-content-between">
          <div class="navbar-header">
            <!-- Navbar Header--><a href="/SSMProjectDemo01/MainForm/index" class="navbar-brand">
              <div class="brand-text brand-big visible text-uppercase"><strong class="text-primary">Dark</strong><strong>Admin</strong></div>
              <div class="brand-text brand-sm"><strong class="text-primary">D</strong><strong>A</strong></div></a>
            <!-- Sidebar Toggle Btn-->
            <button class="sidebar-toggle"><i class="fa fa-long-arrow-left"></i></button>
          </div>
          <div class="right-menu list-inline no-margin-bottom">    
            <div class="list-inline-item"><a href="#" class="search-open nav-link"><i class="icon-magnifying-glass-browser"></i></a></div>
            <div class="list-inline-item dropdown"><a id="navbarDropdownMenuLink1" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link messages-toggle"><i class="icon-email"></i><span class="badge dashbg-1">5</span></a>
              <div aria-labelledby="navbarDropdownMenuLink1" class="dropdown-menu messages"><a href="#" class="dropdown-item message d-flex align-items-center">
                  <div class="profile"><img src="${pageContext.request.contextPath }/MainWidget/img/avatar-3.jpg" alt="..." class="img-fluid">
                    <div class="status online"></div>
                  </div>
                  <div class="content">   <strong class="d-block">Nadia Halsey</strong><span class="d-block">lorem ipsum dolor sit amit</span><small class="date d-block">9:30am</small></div></a><a href="#" class="dropdown-item message d-flex align-items-center">
                  <div class="profile"><img src="${pageContext.request.contextPath }/MainWidget/img/avatar-2.jpg" alt="..." class="img-fluid">
                    <div class="status away"></div>
                  </div>
                  <div class="content">   <strong class="d-block">Peter Ramsy</strong><span class="d-block">lorem ipsum dolor sit amit</span><small class="date d-block">7:40am</small></div></a><a href="#" class="dropdown-item message d-flex align-items-center">
                  <div class="profile"><img src="${pageContext.request.contextPath }/MainWidget/img/avatar-1.jpg" alt="..." class="img-fluid">
                    <div class="status busy"></div>
                  </div>
                  <div class="content">   <strong class="d-block">Sam Kaheil</strong><span class="d-block">lorem ipsum dolor sit amit</span><small class="date d-block">6:55am</small></div></a><a href="#" class="dropdown-item message d-flex align-items-center">
                  <div class="profile"><img src="${pageContext.request.contextPath }/MainWidget/img/avatar-5.jpg" alt="..." class="img-fluid">
                    <div class="status offline"></div>
                  </div>
                  <div class="content">   <strong class="d-block">Sara Wood</strong><span class="d-block">lorem ipsum dolor sit amit</span><small class="date d-block">10:30pm</small></div></a><a href="#" class="dropdown-item text-center message"> <strong>See All Messages <i class="fa fa-angle-right"></i></strong></a></div>
            </div>
            <!-- Tasks-->
            <div class="list-inline-item dropdown"><a id="navbarDropdownMenuLink2" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link tasks-toggle"><i class="icon-new-file"></i><span class="badge dashbg-3">9</span></a>
              <div aria-labelledby="navbarDropdownMenuLink2" class="dropdown-menu tasks-list"><a href="#" class="dropdown-item">
                  <div class="text d-flex justify-content-between"><strong>Task 1</strong><span>40% complete</span></div>
                  <div class="progress">
                    <div role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" class="progress-bar dashbg-1"></div>
                  </div></a><a href="#" class="dropdown-item">
                  <div class="text d-flex justify-content-between"><strong>Task 2</strong><span>20% complete</span></div>
                  <div class="progress">
                    <div role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" class="progress-bar dashbg-3"></div>
                  </div></a><a href="#" class="dropdown-item">
                  <div class="text d-flex justify-content-between"><strong>Task 3</strong><span>70% complete</span></div>
                  <div class="progress">
                    <div role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" class="progress-bar dashbg-2"></div>
                  </div></a><a href="#" class="dropdown-item">
                  <div class="text d-flex justify-content-between"><strong>Task 4</strong><span>30% complete</span></div>
                  <div class="progress">
                    <div role="progressbar" style="width: 30%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" class="progress-bar dashbg-4"></div>
                  </div></a><a href="#" class="dropdown-item">
                  <div class="text d-flex justify-content-between"><strong>Task 5</strong><span>65% complete</span></div>
                  <div class="progress">
                    <div role="progressbar" style="width: 65%" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" class="progress-bar dashbg-1"></div>
                  </div></a><a href="#" class="dropdown-item text-center"> <strong>See All Tasks <i class="fa fa-angle-right"></i></strong></a>
              </div>
            </div>
            <!-- Tasks end-->
            <!-- Megamenu-->
            <div class="list-inline-item dropdown menu-large"><a href="#" data-toggle="dropdown" class="nav-link">Mega <i class="fa fa-ellipsis-v"></i></a>
              <div class="dropdown-menu megamenu">
                <div class="row">
                  <div class="col-lg-3 col-md-6"><strong class="text-uppercase">Elements Heading</strong>
                    <ul class="list-unstyled mb-3">
                      <li><a href="#">Lorem ipsum dolor</a></li>
                      <li><a href="#">Sed ut perspiciatis</a></li>
                      <li><a href="#">Voluptatum deleniti</a></li>
                      <li><a href="#">At vero eos</a></li>
                      <li><a href="#">Consectetur adipiscing</a></li>
                      <li><a href="#">Duis aute irure</a></li>
                      <li><a href="#">Necessitatibus saepe</a></li>
                      <li><a href="#">Maiores alias</a></li>
                    </ul>
                  </div>
                  <div class="col-lg-3 col-md-6"><strong class="text-uppercase">Elements Heading</strong>
                    <ul class="list-unstyled mb-3">
                      <li><a href="#">Lorem ipsum dolor</a></li>
                      <li><a href="#">Sed ut perspiciatis</a></li>
                      <li><a href="#">Voluptatum deleniti</a></li>
                      <li><a href="#">At vero eos</a></li>
                      <li><a href="#">Consectetur adipiscing</a></li>
                      <li><a href="#">Duis aute irure</a></li>
                      <li><a href="#">Necessitatibus saepe</a></li>
                      <li><a href="#">Maiores alias</a></li>
                    </ul>
                  </div>
                  <div class="col-lg-3 col-md-6"><strong class="text-uppercase">Elements Heading</strong>
                    <ul class="list-unstyled mb-3">
                      <li><a href="#">Lorem ipsum dolor</a></li>
                      <li><a href="#">Sed ut perspiciatis</a></li>
                      <li><a href="#">Voluptatum deleniti</a></li>
                      <li><a href="#">At vero eos</a></li>
                      <li><a href="#">Consectetur adipiscing</a></li>
                      <li><a href="#">Duis aute irure</a></li>
                      <li><a href="#">Necessitatibus saepe</a></li>
                      <li><a href="#">Maiores alias</a></li>
                    </ul>
                  </div>
                  <div class="col-lg-3 col-md-6"><strong class="text-uppercase">Elements Heading</strong>
                    <ul class="list-unstyled mb-3">
                      <li><a href="#">Lorem ipsum dolor</a></li>
                      <li><a href="#">Sed ut perspiciatis</a></li>
                      <li><a href="#">Voluptatum deleniti</a></li>
                      <li><a href="#">At vero eos</a></li>
                      <li><a href="#">Consectetur adipiscing</a></li>
                      <li><a href="#">Duis aute irure</a></li>
                      <li><a href="#">Necessitatibus saepe</a></li>
                      <li><a href="#">Maiores alias</a></li>
                    </ul>
                  </div>
                </div>
                <div class="row megamenu-buttons text-center">
                  <div class="col-lg-2 col-md-4"><a href="#" class="d-block megamenu-button-link dashbg-1"><i class="fa fa-clock-o"></i><strong>Demo 1</strong></a></div>
                  <div class="col-lg-2 col-md-4"><a href="#" class="d-block megamenu-button-link dashbg-2"><i class="fa fa-clock-o"></i><strong>Demo 2</strong></a></div>
                  <div class="col-lg-2 col-md-4"><a href="#" class="d-block megamenu-button-link dashbg-3"><i class="fa fa-clock-o"></i><strong>Demo 3</strong></a></div>
                  <div class="col-lg-2 col-md-4"><a href="#" class="d-block megamenu-button-link dashbg-4"><i class="fa fa-clock-o"></i><strong>Demo 4</strong></a></div>
                  <div class="col-lg-2 col-md-4"><a href="#" class="d-block megamenu-button-link bg-danger"><i class="fa fa-clock-o"></i><strong>Demo 5</strong></a></div>
                  <div class="col-lg-2 col-md-4"><a href="#" class="d-block megamenu-button-link bg-info"><i class="fa fa-clock-o"></i><strong>Demo 6</strong></a></div>
                </div>
              </div>
            </div>
            <!-- Megamenu end     -->
            <!-- Languages dropdown    -->
            <div class="list-inline-item dropdown"><a id="languages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link language dropdown-toggle"><img src="${pageContext.request.contextPath }/MainWidget/img/flags/16/GB.png" alt="English"><span class="d-none d-sm-inline-block">English</span></a>
              <div aria-labelledby="languages" class="dropdown-menu"><a rel="nofollow" href="#" class="dropdown-item"> <img src="${pageContext.request.contextPath }/MainWidget/img/flags/16/DE.png" alt="English" class="mr-2"><span>German</span></a><a rel="nofollow" href="#" class="dropdown-item"> <img src="${pageContext.request.contextPath }/MainWidget/img/flags/16/FR.png" alt="English" class="mr-2"><span>French  </span></a></div>
            </div>
            <!-- Log out               -->
            <div class="list-inline-item logout">                   <a id="logout" href="/SSMProjectDemo01/MainForm/logout" class="nav-link"> <span class="d-none d-sm-inline">Logout </span><i class="icon-logout"></i></a></div>
          </div>
        </div>
      </nav>
    </header>
    <div class="d-flex align-items-stretch">
      <!-- Sidebar Navigation-->
      <nav id="sidebar">
        <!-- Sidebar Header-->
        <div class="sidebar-header d-flex align-items-center">
          <div class="avatar"><img src="${pageContext.request.contextPath }/MainWidget/img/avatar-6.jpg" alt="..." class="img-fluid rounded-circle"></div>
          <div class="title">
            <h1 class="h5">${sessionScope.user.uname}</h1>
            <p>Web Designer</p>
          </div>
        </div>
        <!-- Sidebar Navidation Menus--><span class="heading">Main</span>
        <ul class="list-unstyled">
          <li><a href="/SSMProjectDemo01/MainForm/index"> <i class="icon-home"></i>Home </a></li>
          <li><a href="#Tables" aria-expanded="false" data-toggle="collapse"> <i class="icon-padnote"></i>AllTables</a>
			  <ul id="Tables" class="collapse list-unstyled" >
			    <li><a href="/SSMProjectDemo01/MainForm/tables">Role</a></li>
			    <li><a href="/SSMProjectDemo01/MainForm/usergift">UserGift</a></li>
			    <li><a href="/SSMProjectDemo01/MainForm/userbag">UserBag</a></li>
			  </ul>
		  </li>
		  <li><a href="#Fight" aria-expanded="false" data-toggle="collapse"> <i class="icon-windows"></i>Fight</a>
			<ul id="Fight" class="collapse list-unstyled ">
			  <li><a href="/SSMProjectDemo01/MainForm/FightNomoral">FightNomoral</a></li>
			  <li><a href="#">Other</a></li>
			</ul>
		  </li>
          <li><a href="/SSMProjectDemo01/MainForm/charts"> <i class="fa fa-bar-chart"></i>Charts </a></li>
          <li ><a href="#RoleAndZbInfo" aria-expanded="true" data-toggle="collapse"> <i class="icon-padnote"></i>RoleAndZb</a>
            <ul id="RoleAndZbInfo" class="list-unstyled collapse show" >
              <li class="active"><a href="/SSMProjectDemo01/MainForm/forms">Role Info</a></li>
              <li><a href="/SSMProjectDemo01/MainForm/zbinfo">ZB Info</a></li>
            </ul>
          </li>
          <li><a href="/SSMProjectDemo01/MainForm/store"> <i class="icon-home"></i>Store </a></li>
          <li><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="icon-windows"></i>Paper Pool</a>
            <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
              <li><a href="#">Role</a></li>
              <li><a href="#">ZB</a></li>
            </ul>
          </li>
        </ul><span class="heading">Extras</span>
        <ul class="list-unstyled">
          <li> <a href="#"> <i class="icon-settings"></i>Demo </a></li>
          <li> <a href="#"> <i class="icon-writing-whiteboard"></i>Demo </a></li>
          <li> <a href="#"> <i class="icon-chart"></i>Demo </a></li>
        </ul>
      </nav>
      <!-- Sidebar Navigation end-->
      <div class="page-content">
        <!-- Page Header-->
        <div class="page-header no-margin-bottom">
          <div class="container-fluid">
            <h2 class="h5 no-margin-bottom">Basic forms</h2>
          </div>
        </div>
        <!-- Breadcrumb-->
        <div class="container-fluid">
          <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="/SSMProjectDemo01/MainForm/index">Home</a></li>
            <li class="breadcrumb-item active">Basic forms        </li>
          </ul>
        </div>
        <section class="no-padding-top">
          <div class="container-fluid">
            <div class="row">
            <div class="col-lg-12">
                <div class="block">
                  <div class="title"><strong>Role Info</strong></div>
                  <div class="block-body">
                    <form class="form-horizontal"  method="post">
				      <div class="form-group row">
                        <label class="col-sm-2 form-control-label">Role / 角色</label>
                        <div class="col-sm-10">
                          <select id= "RoleSelectBox" name="account" class="form-control mb-3 mb-3" onchange="RoleIdChange(this.value)" >
                            <c:forEach var="role" items="${requestScope.roles}">
                            	<c:choose>
                            	    <c:when test="${param.Roleid == role.rid}">
                            	    	<option value="${role.rid}" selected="selected">${role.rid}__${role.rname}__${role.rare}__Lv:${role.rlevel}</option>
                            	    </c:when>
                            		<c:otherwise>
                            			<option value="${role.rid}" >${role.rid}__${role.rname}__${role.rare}__Lv:${role.rlevel}</option>
                            		</c:otherwise>                   	
                            	</c:choose>
                            </c:forEach>
                          </select>
                        </div>
                      </div>
                      <div class="line"></div>
                      
                      <div class="form-group row">
                        <label class="col-sm-2 form-control-label">Gift / 天赋</label>
                        <div class="col-sm-10">
                          <select id= "GiftSelectBox1" name="GiftSelectBox1" class="form-control mb-3 mb-3" onchange="RoleGiftIdChange(this.value)" >
                             <option></option>
                            <c:forEach var="gift" items="${requestScope.gifts}">
                            	<c:choose>
                            	    <c:when test="${gift.giftid == requestScope.role.giftid1}">
                            	    	<option value="${gift.giftid}" selected="selected">${gift.giftid}__${gift.gname}__${gift.rare}__Lv:${gift.glevel}__Lv:${gift.sxinfo}_${gift.sfsy}</option>
                            	    </c:when>
                            		<c:otherwise>
                            			<option value="${gift.giftid}" >${gift.giftid}__${gift.gname}__${gift.rare}__Lv:${gift.glevel}__Lv:${gift.sxinfo}_${gift.sfsy}</option>
                            		</c:otherwise>                   	
                            	</c:choose>
                            </c:forEach>
                          </select>
                        </div>
                      </div>
                      <div class="line"></div>
                      
                      <div class="form-group row">
                        <label class="col-sm-2 form-control-label">Name / 角色名</label>
                        <div class="col-sm-4">
                          <input type="text" class="form-control" value="${requestScope.role.rname}" id="rname" name = "rname">
                        </div>
                        <label class="col-sm-2 form-control-label">Rare / 稀有度</label>
                        <div class="col-sm-4">
                          <input type="text" class="form-control" disabled="disabled" value="${requestScope.role.rare}" id="rare">
                        </div>
                      </div>
                      <div class="line"></div>
                      <div class="form-group row">
                        <label class="col-sm-2 form-control-label">Level / 等级</label>
                        <div class="col-sm-4">
                          <input type="text" class="form-control" disabled="disabled" value="${requestScope.role.rlevel}" id="rlevel">
                        </div>
                        <label class="col-sm-2 form-control-label">EXP / 经验</label>
                        <div class="col-sm-4">
                          <input type="text" class="form-control" disabled="disabled" value="${requestScope.role.expstr}" id="expstr">
                        </div>
                        
                      </div>
                      <div class="line"></div>
                      <div class="form-group row">
                        <label class="col-sm-2 form-control-label">HP / 血量</label>
                        <div class="col-sm-4">
                          <input type="text" class="form-control" disabled="disabled" value="${requestScope.role.hp}" id="hp" name = "hp">
                        </div>
                        <label class="col-sm-2 form-control-label">MP / 魔法值</label>
                        <div class="col-sm-4">
                          <input type="text" class="form-control" disabled="disabled" value="${requestScope.role.mp}" id="mp" name = "mp">
                        </div>
                        
                      </div>
                      <!-- hp/mp对比信息 -->
                      <div class="form-group row">
                        <label class="col-sm-2 form-control-label"></label>
                        <label class="col-sm-2 form-control-label" id="oldhp"></label>
                        <label class="col-sm-2 form-control-label"></label>
                        <label class="col-sm-2 form-control-label"></label>
                        <label class="col-sm-2 form-control-label" id="oldmp"></label>
                        
                      </div>
                      
                      <div class="line"></div>
                      <div class="form-group row">
                        <label class="col-sm-2 form-control-label">Atk / 攻击力</label>
                        <div class="col-sm-4">
                          <input type="text" class="form-control" disabled="disabled" value="${requestScope.role.atk}" id="atk" name="atk">
                        </div>
                        <label class="col-sm-2 form-control-label">Def / 防御力</label>
                        <div class="col-sm-4">
                          <input type="text" class="form-control" disabled="disabled" value="${requestScope.role.def}" id="def" name="def">
                        </div>
                      </div>
                      <!-- Atk/Def对比信息 -->
                      <div class="form-group row">
                        <label class="col-sm-2 form-control-label"></label>
                        <label class="col-sm-2 form-control-label" id="oldatk"></label>
                        <label class="col-sm-2 form-control-label"></label>
                        <label class="col-sm-2 form-control-label"></label>
                        <label class="col-sm-2 form-control-label" id="olddef"></label>
                        
                      </div>
                      
                      <div class="line"></div>
                      <div class="form-group row">
                        <label class="col-sm-2 form-control-label">ZB1 / 装备栏1</label>
                        <div class="col-sm-4">
                          <select id = "ZbSelectBox1" name="ZbSelectBox1" class="form-control mb-3 mb-3" onchange="RoleZbIdChange(this.value)" >
                            <option></option>
                            <c:forEach var = "zb" items = "${requestScope.zbs}">
                            	<c:choose>
                            		<c:when test="${zb.zbid == requestScope.role.zbid1}">
                            			<option value="${zb.zbid}" selected="selected">${zb.zbid}_${zb.zname}_${zb.rare}_LV:${zb.zlevel}_${zb.sfsy}</option> 
                            		</c:when>
                            		<c:otherwise>
                            			<option value="${zb.zbid}" >${zb.zbid}_${zb.zname}_${zb.rare}_LV:${zb.zlevel}_${zb.sfsy}</option> 
                            		</c:otherwise>
                            	</c:choose>
                            	            	
                            </c:forEach>
                          </select>
                        </div>
                        
                        <label class="col-sm-2 form-control-label">ZB2 / 装备栏2</label>
                        <div class="col-sm-4">
                          <select id = "ZbSelectBox2" name="ZbSelectBox2" class="form-control mb-3 mb-3" onchange="RoleZbIdChange(this.value)">
                            <option></option>
                            <c:forEach var = "zb" items = "${requestScope.zbs}">
                            	<c:choose>
                            		<c:when test="${zb.zbid == requestScope.role.zbid2}">
                            			<option value="${zb.zbid}" selected="selected">${zb.zbid}_${zb.zname}_${zb.rare}_LV:${zb.zlevel}_${zb.sfsy}</option> 
                            		</c:when>
                            		<c:otherwise>
                            			<option value="${zb.zbid}" >${zb.zbid}_${zb.zname}_${zb.rare}_LV:${zb.zlevel}_${zb.sfsy}</option> 
                            		</c:otherwise>
                            	</c:choose>      	                           	
                            </c:forEach>
                          </select>
                        </div>
                      </div>
                      <div class="line"></div>
                      <div class="form-group row">
                        <div class="col-sm-2 ml-auto">
                            <!--<button type="submit" class="btn btn-primary" onclick="SaveChange()">Save changes</button>-->
                            <!-- 使用ajax更新数据，无法更改session中的值 -->
                            <a class="btn btn-primary number dashtext-4" onclick="SaveChange()">Save changes</a>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>              
            </div>
          </div>
        </section>
        <footer class="footer">
          <div class="footer__block block no-margin-bottom">
            <div class="container-fluid text-center">
              <!-- Please do not remove the backlink to us unless you support us at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
              <p class="no-margin-bottom">Copyright &copy; 2019.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
            </div>
          </div>
        </footer>
      </div>
    </div>
    <!-- JavaScript files-->
    <script src="${pageContext.request.contextPath }/MainWidget/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/MainWidget/vendor/popper.js/umd/popper.min.js"> </script>
    <script src="${pageContext.request.contextPath }/MainWidget/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/MainWidget/vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="${pageContext.request.contextPath }/MainWidget/vendor/chart.js/Chart.min.js"></script>
    <script src="${pageContext.request.contextPath }/MainWidget/vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath }/MainWidget/js/front.js"></script>
  </body>
</html>