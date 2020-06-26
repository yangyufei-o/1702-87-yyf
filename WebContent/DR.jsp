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
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-loop" onclick="showall()">刷新</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-search" onclick="sousuo()">搜索</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-plus" onclick="zengjia()">添加</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-trash" onclick="deletepart()">删除</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-compose" onclick="update()">修改</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-arrowthinleft" onclick="fanhui()">返回</button>

		    </div>
		</div>

		<div id="tt" class="easyui-tabs" data-options="tools:'#tab-tools'" style="width:1030px;height:640px;">
		<div title="所有部门" style="width:200px;height:200px;">
		
			<table id="dg" class="easyui-datagrid" title=" " style="width:1020px;height:600px"
					data-options="singleSelect:true,url:'datagrid_data1.json',method:'get'">
				<thead>
					<tr>
						<th data-options="field:'D',width:30">序号</th>
						<th data-options="field:'name',width:200">员工姓名</th>
						<th data-options="field:'itemid',width:100">员工编码</th>
						<th data-options="field:'listprice',width:80,align:'right'">出生日期</th>
						<th data-options="field:'unitcost',width:80,align:'right'">性别</th>
						<th data-options="field:'a',width:100">职务</th>
						<th data-options="field:'b',width:100">员工岗位</th>
						<th data-options="field:'c',width:100">技术职称</th>
						<th data-options="field:'d',width:100">联系电话</th>
						<th data-options="field:'e',width:100">家庭电话</th>
						<th data-options="field:'f',width:100">家庭住址</th>
						<th data-options="field:'g',width:100">员工qq</th>
						<th data-options="field:'h',width:100">电子邮箱</th>
						<th data-options="field:'i',width:100">入职时间</th>
						<th data-options="field:'j',width:100">离职时间</th>
						<th data-options="field:'k',width:100">员工状态</th>
						<th data-options="field:'l',width:100">工作职责</th>
						<th data-options="field:'m',width:100">扩展字段1</th>
						<th data-options="field:'n',width:100">扩展字段2</th>
						<th data-options="field:'q',width:100">扩展字段3</th>
						<th data-options="field:'p',width:100">扩展字段4</th>
						<th data-options="field:'q',width:100">扩展字段5</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="liste" status="ste">
						<tr>
						<td>${ ste.index+1}</td>
						<td><s:property value="e_name"/></td>
						<td><s:property value="e_code"/></td>
						<td><s:property value="e_birth"/></td>
						<td><s:property value="e_sex"/></td>
						<td><s:property value="e_job"/></td>
						<td><s:property value="e_job"/></td>
						<td><s:property value="e_jobfunctions"/></td>
						<td><s:property value="e_tel"/></td>
						<td><s:property value="e_phone"/></td>
						<td><s:property value="e_address"/></td>
						<td><s:property value="e_qq"/></td>
						<td><s:property value="e_mail"/></td>
						<td><s:property value="e_start"/></td>
						<td><s:property value="e_end"/></td>
						<td><s:property value="e_status"/></td>
						<td><s:property value="e_duty"/></td>
						<td><s:property value="e_extend1"/></td>
						<td><s:property value="e_extend2"/></td>
						<td><s:property value="e_extend3"/></td>
						<td><s:property value="e_extend4"/></td>
						<td><s:property value="e_extend5"/></td>
						<td><s:property value=""/></td>
						<td><s:property value=""/></td>
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
			window.location="yuangong_find";
		}
	
		function update(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
// 				$.messager.alert('Info', row.itemid+":"+row.productid+":"+row.attr1);
				$('#tt').tabs('add',{
				title: '修改员工',
				content: "<iframe frameborder='no' src='yuangong_chaxun?ecode="+row.itemid+"' style='width:1024px;height:600px;'></iframe>",
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
				content: "<iframe frameborder='no' src='UCemployee.jsp' style='width:1024px;height:600px;'></iframe>",
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
	</script>
</html>