<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %><!-- 引入标签库  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>部门信息</title>
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
		    <span style="font-size:16px;margin-right:80px;font-weight:bold;color:#0079fd;">当前位置:>部门信息</span>
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
				<th data-options="field:'name',width:200">名称</th>
				<th data-options="field:'itemid',width:100">编码</th>
				<th data-options="field:'listprice',width:80,align:'right'">助记码</th>
				<th data-options="field:'unitcost',width:80,align:'right'">负责人</th>
				<th data-options="field:'a',width:100">部门电话</th>
				<th data-options="field:'v',width:100">部门人数</th>
				<th data-options="field:'e',width:200">扩展字段1</th>
				<th data-options="field:'w',width:200">扩展字段2</th>
				<th data-options="field:'t',width:200">扩展字段3</th>
				<th data-options="field:'p',width:200">扩展字段4</th>
				<th data-options="field:'y',width:300">扩展字段5</th>
			</tr>
		</thead>
		<tbody>
		<s:iterator value="listd" status="st">
			<tr>
			<td>${st.index+1}</td>
			<td><s:property value="d_name"/></td>
			<td><s:property value="d_code"/></td>
			<td><s:property value="d_helpcode"/></td>
			<td><s:property value="d_principal"/></td>
			<td><s:property value="d_phone"/></td>
			<td><s:property value="d_num"/></td>
			<td><s:property value="d_extend1"/></td>
			<td><s:property value="d_extend2"/></td>
			<td><s:property value="d_extend3"/></td>
			<td><s:property value="d_extend4"/></td>
			<td><s:property value="d_extend5"/></td>
			</tr>	
		</s:iterator>
		
		</tbody>
	</table>		
		</div>
		</div>
		
</body>
	<script type="text/javascript">
		
	function sousuo(){
		$.messager.prompt('搜索', '请输入部门名称、编码、助记码、负责人姓名等关键字进行查找', function(r){
			if (r){
				window.location="bumen_findby?keyword="+r;
			}
		});
	}
		function showall(){
			window.location="bumen_find";
		}
	

		function update(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
// 				$.messager.alert('Info', row.itemid+":"+row.productid+":"+row.attr1);
				$('#tt').tabs('add',{
				title: '修改部门',
				content: "<iframe frameborder='no' src='bumen_chaxun?dcode="+row.itemid+"' style='width:1024px;height:600px;'></iframe>",
				closable: true
			});
// 				alert(row.itemid);
// 				alert("修改成功");
			}	
		}

		function deletepart(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
// 				$.messager.alert('Info', row.itemid+":"+row.productid+":"+row.attr1);
				shanchu(row.name,row.itemid);
			}
		}		
		
		function shanchu(pname,pcode){
			$.messager.confirm('删除部门', '确定要删除部门: '+pname+'吗？', function(r){
				if (r){
					zhixingshanchu(pcode);
					$.messager.alert('提示','删除'+pcode+'成功!');
				}
			});
		}		

		
		function zhixingshanchu(dcode){
			window.location="bumen_delete?dcode="+dcode;
		}
		
		
		var index = 0;
		function zengjia(){
			$('#tt').tabs('add',{
				title: '增加部门',
				content: "<iframe frameborder='no' src='UCdepartment.jsp' style='width:1024px;height:600px;'></iframe>",
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