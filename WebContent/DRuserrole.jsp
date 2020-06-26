<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %><!-- 引入标签库  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>员工信息</title>
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
		    <div style="display:inline;font-size:16px;margin-right:80px;font-weight:bold;color:#0079fd;">当前位置:>角色管理</div>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-loop" onclick="showall()">刷新</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-plus" onclick="zengjia()">添加</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-compose" onclick="update()">修改</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-arrowthinleft" onclick="fanhui()">返回</button>
		    </div>
		</div>

		<div id="tt" class="easyui-tabs" data-options="tools:'#tab-tools'" style="width:1030px;height:640px;">
		<div title="所有员工" style="width:200px;height:200px;">
		
			<table id="dg" class="easyui-datagrid" title=" " style="width:1020px;height:600px"
					data-options="singleSelect:true,url:'datagrid_data1.json',method:'get'">
				<thead>
					<tr>
						<th data-options="field:'D',width:50">序号</th>
						<th data-options="field:'name',width:100">角色名称</th>
						<th data-options="field:'itemid',width:100">角色编码</th>
						<th data-options="field:'a',width:100">部门信息</th>
						<th data-options="field:'b',width:100">员工信息</th>
						<th data-options="field:'c',width:100">数据资料</th>
						<th data-options="field:'d',width:100">工作日志</th>
						<th data-options="field:'e',width:100">工作计划</th>
						<th data-options="field:'f',width:100">工作总结</th>
						<th data-options="field:'g',width:100">个人任务</th>
						<th data-options="field:'h',width:100">所有任务</th>
						<th data-options="field:'i',width:100">备用任务</th>
						<th data-options="field:'j',width:100">客户管理</th>
						<th data-options="field:'k',width:100">客户信息</th>
						<th data-options="field:'l',width:100">系统公告</th>
						<th data-options="field:'m',width:100">操作日志</th>
						<th data-options="field:'n',width:100">角色管理</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="listur" status="st">
						<tr>
							<td>${ st.index+1}</td>
							<td><s:property value="u_name"/></td>
							<td><s:property value="u_id"/></td>
							<td><span><s:property value="u_department"/></span></td>
							<td><span><s:property value="u_employee"/></span></td>
							<td><span><s:property value="u_datainfo"/></span></td>
							<td><span><s:property value="u_worklog"/></span></td>
							<td><span><s:property value="u_workplane"/></span></td>
							<td><span><s:property value="u_worksummary"/></span></td>
							<td><span><s:property value="u_personaltask"/></span></td>
							<td><span><s:property value="u_alltask"/></span></td>
							<td><span><s:property value="u_othertask"/></span></td>
							<td><span><s:property value="u_customer"/></span></td>
							<td><span><s:property value="u_customerinfo"/></span></td>
							<td><span><s:property value="u_systemads"/></span></td>
							<td><span><s:property value="u_systemlog"/></span></td>
							<td><span><s:property value="u_roleinfo"/></span></td>
						</tr>			
					</s:iterator>
				</tbody>
			</table>		
		</div>
		
		</div>
		
</body>





	<script type="text/javascript">
		
	function sousuo(){
		$.messager.prompt('搜索', '请输入员工姓名、编码、职务、岗位、职称、电话、住址、qq、电子邮箱、状态、职责进行查找', function(r){
			if (r){
				window.location="yuangong_findby?keyword="+r;
			}
		});
	}
		function showall(){
			window.location="juese_find";
		}
	
		function update(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
// 				$.messager.alert('Info', row.itemid+":"+row.productid+":"+row.attr1);
				$('#tt').tabs('add',{
				title: '修改员工',
				content: "<iframe frameborder='no' src='juese_chaxun?uid="+row.itemid+"' style='width:1024px;height:600px;'></iframe>",
				closable: true
			});

			}	
		}

		function deletepart(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
// 				$.messager.alert('Info', row.itemid+":"+row.productid+":"+row.attr1);
				shanchu(row.name,row.itemid);
			}
		}		
		
		function shanchu(ename,ecode){
			$.messager.confirm('删除员工', '确定要删除员工: '+ename+ecode+'吗？', function(r){
				if (r){
					zhixingshanchu(ecode);
					$.messager.alert('提示','删除'+ecode+'成功!');
				}
			});
		}		

		function zhixingshanchu(ecode){
			window.location="yuangong_delete?ecode="+ecode;
		}
		
		
		var index = 0;
		function zengjia(){
			$('#tt').tabs('add',{
				title: '基本信息',
				content: "<iframe frameborder='no' src='UCuserrole.jsp' style='width:1024px;height:600px;'></iframe>",
				closable: true
			});
		}
		function fanhui(){
			var tab = $('#tt').tabs('getSelected');
			if (tab){
				var index = $('#tt').tabs('getTabIndex', tab);
				if(index>0){
				$('#tt').tabs('close', index);
				}
			}
		}
		
		window.onload = function(){
// 			var t=setTimeout("translate()",20);
			translate();
		}
		
		function translate(){
			var inputs	 = document.getElementsByTagName("span");
			for(var i=0;i<inputs.length;i++){
				if(inputs[i].innerHTML=="hidden='hidden'"){
					inputs[i].innerHTML="不可见";
				}else if(inputs[i].innerHTML=="onclick='warning()'"){
					inputs[i].innerHTML="可见不可用";
				}else if(inputs[i].innerHTML.length>12){
					inputs[i].innerHTML="可用";
				}
				
			}
		}
		
		
		
		
	</script>
</html>