<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %><!-- 引入标签库  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>CRM</title>
	<style>
	h2,h1{
	margin:0px;
	}
	#pagehead{
	margin:0px;
	height:100px;
	background:red;
	line-height:100px;
	background-image: url(pic/head.png);
	}
	aside{
	margin:0px;
	float:left;
	height:740px;
	width:215px;
	padding-top:60px;
	overflow-y:auto;
	border-right:1px solid #007aff;
	}
	nav{
	margin:0px;
	height:30px;
	background-image: url(pic/daohang.png);
	}
	section{
	margin:0px;
	height:740px;
	width:1080px;
	float:right;
	}
	footer{
	margin:0px;
	height:30px;
	background:#007aff;
	}
	#list {
	/*避免导航边框和列表背景边框重叠，看起来像两条边框似得；*/
	margin-top: 17px;
	margin-bottom:40px;
	}
	.mui-navigate-right{
	height:40px;
	}
	#item{
	height:35px;
	padding-top:9px;
	border-radius:3px;
	font-weight:bold;
	color:#007aff;
	}
	
	#item:hover{
	background:#c3e7f7;
	list-style:disc;
	padding-left:32px;
	}

	
	</style>
	<link rel="stylesheet" href="css/mui.min.css">
	<script src="js/mui.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="js/themes/default/easyui.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>

	
	</head>
	<body style="margin:0px;width:1300px;margin:0 auto;border:1px solid #007aff;">
	
	<div id="pagehead">
	</div>
	
	<nav>
		<span style="color:#ffffff;font-weight:bold;height:30px;line-height:30px;margin-left:70px;"><s:property value="userRole.u_name"/>:<s:property value="employee.e_name"/>,您好!</span>		
		<span id="nowtime" style="color:#ffffff;height:30px;line-height:30px;margin-left:650px;">正在加载当前时间...</span>
	</nav>
	
	<aside>
		<img alt="菜单" src="pic/caidan.png" style="width:114px;margin-top:-60px;position:fixed;z-index: 10;">
		<div class="mui-content">
			<ul id="list" class="mui-table-view mui-table-view-chevron">	
				<li class="mui-table-view-cell mui-collapse ">
					<a class="mui-navigate-right" href="javascript:void(0)" style="background:#007aff;color:white;font-weight:bold;">
						基本信息<img src="pic/jibenxinxi.png" style="width:18px;margin-left:20px;">
					</a>
					<ul class="mui-table-view mui-table-view-chevron">

						 <li class="mui-table-view-cell" id="item" <s:property value='userRole.u_department'/> ><a href="javascript:void(0)">部门信息</a></li>
						 <li class="mui-table-view-cell" id="item" <s:property value='userRole.u_employee'/> ><a href="javascript:void(0)">员工信息</a></li>
						 <li class="mui-table-view-cell" id="item" <s:property value='userRole.u_datainfo'/> ><a href="javascript:void(0)">数据资料</a></li>
						 
					</ul>
				</li>			
			</ul>
			
			<ul id="list" class="mui-table-view mui-table-view-chevron">	
				<li class="mui-table-view-cell mui-collapse">
					<a class="mui-navigate-right" href="javascript:void(0)" style="background:#007aff;color:white;font-weight:bold;">
						员工中心<img src="pic/yuangong.png" style="width:18px;margin-left:20px;">
					</a>
					<ul class="mui-table-view mui-table-view-chevron">		
						 <li <s:property value="ceshi"/> class="mui-table-view-cell" id="item" <s:property value='userRole.u_worklog'/> ><a href="javascript:void(0)">工作日志</a></li>
						 <li class="mui-table-view-cell" id="item"><a href="javascript:void(0)">工作计划</a></li>
						 <li class="mui-table-view-cell" id="item"><a href="javascript:void(0)">工作总结</a></li>
					</ul>
				</li>			
			</ul>			


			<ul id="list" class="mui-table-view mui-table-view-chevron">	
				<li class="mui-table-view-cell mui-collapse">
					<a class="mui-navigate-right" href="javascript:void(0)" style="background:#007aff;color:white;font-weight:bold;">
						任务中心<img src="pic/renwu.png" style="width:18px;margin-left:20px;">
					</a>
					<ul class="mui-table-view mui-table-view-chevron">
					
						 <li class="mui-table-view-cell" id="item"><a href="javascript:void(0)">个人任务</a></li>
						 <li class="mui-table-view-cell" id="item"><a href="javascript:void(0)">所有任务</a></li>
						 <li class="mui-table-view-cell" id="item"><a href="javascript:void(0)">备用任务</a></li>

					</ul>
				</li>			
			</ul>
			
			<ul id="list" class="mui-table-view mui-table-view-chevron">	
				<li class="mui-table-view-cell mui-collapse">
					<a class="mui-navigate-right" href="javascript:void(0)" style="background:#007aff;color:white;font-weight:bold;">
						客户中心<img src="pic/kehu.png" style="width:18px;margin-left:20px;">
					</a>
					<ul class="mui-table-view mui-table-view-chevron">
					
						 <li class="mui-table-view-cell" id="item" <s:property value='userRole.u_customer'/>><a href="javascript:void(0)">客户管理</a></li>
						 <li class="mui-table-view-cell" id="item"><a href="javascript:void(0)">客户信息</a></li>

					</ul>
				</li>
			</ul>
			

			<ul id="list" class="mui-table-view mui-table-view-chevron">	
				<li class="mui-table-view-cell mui-collapse">
					<a class="mui-navigate-right" href="javascript:void(0)" style="background:#007aff;color:white;font-weight:bold;">
						系统管理<img src="pic/xitong.png" style="width:18px;margin-left:20px;">
					</a>
					<ul class="mui-table-view mui-table-view-chevron">
					
						 <li class="mui-table-view-cell" id="item"  onclick="xitongpeizhi()"><a href="javascript:void(0)">系统配置</a></li>
<!-- 						 <li class="mui-table-view-cell" id="item"  ><a href="javascript:void(0)">系统公告</a></li> -->
						 <li class="mui-table-view-cell" id="item" <s:property value='userRole.u_systemlog'/> ><a href="javascript:void(0)">操作日志</a></li>
						 <li class="mui-table-view-cell" id="item" <s:property value='temproleinfo'/> <s:property value='userRole.u_roleinfo'/> ><a href="javascript:void(0)">角色管理</a></li>
						 <li class="mui-table-view-cell" id="item" onclick="tuichuxitong()" ><a href="javascript:void(0)">退出系统</a></li>
					</ul>
				</li>			
			</ul>			
			
		</div>
		
	</aside>
	
	<section>
	<iframe id="gongzuoqu" src="yuangong_find" style="width:1080px;height:740px;" frameborder="no"></iframe>
	</section>
	<div style="clear:both;"></div>
	<footer style="margin:0px;">
	<h5 style="text-align:center;margin:0px;color:white;height:30px;line-height:30px;">copyright:greenskytechnology.cn&nbsp;&nbsp;地址:广东省茂名市茂南区广东石油化工学院1A101&nbsp;零一工作室</h5>
	</footer>
	
	</body>
	
	<script type="text/javascript">
		var work = document.getElementById("gongzuoqu");
		function bumenxinxi(){
			work.src="bumen_find";
		}
		function yuangongxinxi(){
			work.src="yuangong_find";
		}
		function kehuguanli(){
			work.src="kehu_find";
		}	
		function gongzuorizhi(){
			work.src="rizhi_find";
		}
		function shujuziliao(){
			work.src="shuju_find";
		}
		function xitongrizhi(){
			work.src="xitongrizhi_find";
		}	
		function jueseguanli(){
			work.src="juese_find";
		}

		function xitongpeizhi(){
			work.src="yuangong_reset";
		}
		
		function tuichuxitong(){
			window.location="login_loginout";
		}
		
		
		function warning(){
			$.messager.alert('温馨提示','您无此权限!','warning');
		}
		
		
		function showtime(){
			var mydate = new Date();
			var a = document.getElementById("nowtime");
			a.innerHTML = "当前时间: "+mydate.toLocaleTimeString();
			}
			var a = setInterval("showtime()",1000);
		
	</script>	
	</html>