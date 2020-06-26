<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %><!-- 引入标签库  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>客户信息</title>
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
		    <span style="font-size:16px;margin-right:80px;font-weight:bold;color:#0079fd;">当前位置:>客户管理</span>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-loop" onclick="showall()">刷新</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-search" onclick="sousuo()">搜索</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-plus" onclick="zengjia()">添加</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-trash" onclick="deletepart()">删除</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-compose" onclick="update()">修改</button>		        
				<button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-contact" onclick="addlinkman()">查看联系人</button>
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
						<th data-options="field:'name',width:200">客户名称</th>
						<th data-options="field:'itemid',width:100">客户编码</th>
						<th data-options="field:'listprice',width:80,align:'right'">客户来源</th>
						<th data-options="field:'unitcost',width:80,align:'right'">客户类别</th>
						<th data-options="field:'ut',width:80,align:'right'">所属员工</th>
						<th data-options="field:'a',width:100">客户简称</th>
						<th data-options="field:'b',width:100">行业类别</th>
						<th data-options="field:'c',width:100">客户类型</th>
						<th data-options="field:'d',width:100">所属地区</th>
						<th data-options="field:'e',width:100">成交几率</th>
						<th data-options="field:'f',width:100">客户状态</th>
						<th data-options="field:'g',width:100">客户qq</th>
						<th data-options="field:'m',width:100">扩展字段1</th>
						<th data-options="field:'n',width:100">扩展字段2</th>
						<th data-options="field:'q',width:100">扩展字段3</th>
						<th data-options="field:'p',width:100">扩展字段4</th>
						<th data-options="field:'q',width:100">扩展字段5</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="listcustomer" status="stc">
						<tr>
							<td> ${ stc.index+1}</td>
							<td><s:property value="c_name"/></td>
							<td><s:property value="c_code"/></td>
							<td><s:property value="c_rersource"/></td>
							<td><s:property value="c_category"/></td>
							<td><s:property value="c_extend5"/></td>
							<td><s:property value="c_shortname"/></td>
							<td><s:property value="c_industy"/></td>
							<td><s:property value="c_type"/></td>
							<td><s:property value="c_region"/></td>
							<td><s:property value="c_probability"/></td>
							<td><s:property value="c_status"/></td>
							<td><s:property value="c_qq"/></td>
							<td><s:property value="c_extend1"/></td>
							<td><s:property value="c_extend2"/></td>
							<td><s:property value="c_extend3"/></td>
							<td><s:property value="c_extend4"/></td>
							<td><s:property value="c_extend5"/></td>
						</tr>				
					</s:iterator>
				</tbody>
			</table>		
		</div>
		
		</div>
		
</body>

	<script type="text/javascript">
		
	function sousuo(){
		$.messager.prompt('搜索', '请输入客户来源、名称、类别、编码、简称、行业、类型、地区、状态、qq查找', function(r){
			if (r){
				window.location="kehu_findby?keyword="+r;
			}
		});
	}
		function showall(){
			window.location="kehu_find";
		}
	
		function update(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
// 				$.messager.alert('Info', row.itemid+":"+row.productid+":"+row.attr1);
				$('#tt').tabs('add',{
				title: '修改客户',
				content: "<iframe frameborder='no' src='kehu_chaxun?ccode="+row.itemid+"' style='width:1024px;height:600px;'></iframe>",
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
		
		function shanchu(cname,ccode){
			$.messager.confirm('删除', '确定要: '+cname+ccode+'吗？', function(r){
				if (r){
					zhixingshanchu(ccode);
					$.messager.alert('提示','删除'+ccode+'成功!');
				}
			});
		}		

		function zhixingshanchu(ccode){
			window.location="kehu_delete?ccode="+ccode;
		}
		
		
		var index = 0;
		function zengjia(){
			$('#tt').tabs('add',{
				title: '客户信息',
				content: "<iframe frameborder='no' src='kehu_add' style='width:1024px;height:600px;'></iframe>",
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
		
		function addlinkman(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
				window.location="lianxiren_find?linkccode="+row.itemid+"";
			}	
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	</script>
</html>