<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %><!-- 引入标签库  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>系统日志内容</title>
	<link rel="stylesheet" type="text/css" href="js/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="js/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="js/demo/demo.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	<link rel="stylesheet" href="css/mui.min.css">
	<script src="js/mui.min.js"></script>
	<style type="text/css">
	#bt:hover{
	background:#0062cc;
	padding-left:15px;
	}
	
	</style>
</head>
<body style="margin:0px;">

		<div class="mui-content">
		    <div class="mui-content-padded">
		    	<span style="font-size:16px;margin-right:80px;font-weight:bold;color:#0079fd;">当前位置:>操作日志</span>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-loop" onclick="showall()">刷新</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-compose" onclick="sousuo()">搜索</button>
		    </div>
		</div>

		<div id="tt" class="easyui-tabs" data-options="tools:'#tab-tools'" style="width:1030px;height:640px;">
		<div title="系统日志" style="width:200px;height:200px;">
		
			<table id="dg" class="easyui-datagrid" title=" " style="width:1020px;height:600px"
					data-options="singleSelect:true,url:'datagrid_data1.json',method:'get'">
				<thead>
					<tr>
						<th data-options="field:'D',width:30">序号</th>
						<th data-options="field:'name',width:200">时间</th>
						<th data-options="field:'itemid',width:100">操作员</th>
						<th data-options="field:'a',width:300">操作内容</th>
						<th data-options="field:'b',width:200">扩展字段1</th>
						<th data-options="field:'c',width:200">扩展字段2</th>
						<th data-options="field:'d',width:200">扩展字段3</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="listsl" status="st">
						<tr>
							<td>${ st.index+1 }</td>
							<td><s:property value="s_time"/></td>
							<td><s:property value="s_operator"/></td>
							<td><s:property value="s_info"/></td>
							<td><s:property value="s_extend1"/></td>
							<td><s:property value="s_extend2"/></td>
							<td><s:property value="s_extend3"/></td>
						</tr>
					</s:iterator>
				</tbody>
			</table>		
		</div>
		</div>
		
</body>





	<script type="text/javascript">
		
		function sousuo(){
			$.messager.prompt('搜索', '请输入：日志关键字  进行查找', function(r){
				if (r){
					window.location="xitongrizhi_findby?keyword="+r;
				}
			});
		}
		
		function showall(){
			window.location="xitongrizhi_find";
		}
	


	
		

		
		function shujuziliao(){
			window.location="shuju_find";
		}		
		
		var index = 0;

	</script>
</html>