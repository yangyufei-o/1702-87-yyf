<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %><!-- 引入标签库  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>数据资料内容</title>
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
		    	<span style="font-size:30px;margin-right:80px;font-weight:bold;color:#0079fd;"><s:property value="dataname"/></span>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-loop" onclick="showall()">刷新</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-plus" onclick="zengjia()">添加</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-trash" onclick="deletepart()">删除</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-compose" onclick="update()">修改</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-arrowthinleft" onclick="shujuziliao()">返回</button>
		    </div>
		</div>

		<div id="tt" class="easyui-tabs" data-options="tools:'#tab-tools'" style="width:1030px;height:640px;">
		<div title="数据资料内容" style="width:200px;height:200px;">
		
			<table id="dg" class="easyui-datagrid" title=" " style="width:1020px;height:600px"
					data-options="singleSelect:true,url:'datagrid_data1.json',method:'get'">
				<thead>
					<tr>
						<th data-options="field:'D',width:30">序号</th>
						<th data-options="field:'name',width:100">名称</th>
						<th data-options="field:'itemid',width:100">编号</th>
						<th data-options="field:'a',width:200">扩展字段1</th>
						<th data-options="field:'b',width:200">扩展字段1</th>
						<th data-options="field:'c',width:200">扩展字段1</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="listii" status="st">
						<tr>
							<td>${ st.index+1}</td>
							<td><s:property value="i_info"/> </td>
							<td><s:property value="i_id"/> </td>
							<td><s:property value="i_extend1"/> </td>
							<td><s:property value="i_extend2"/> </td>
							<td><s:property value="i_extend3"/> </td>
						</tr>					
					</s:iterator>
				</tbody>
			</table>		
		</div>
		
		</div>
		
</body>





	<script type="text/javascript">
		
	function sousuo(){
		$.messager.prompt('搜索', '请输入：数据资料关键字  进行查找', function(r){
			if (r){
				window.location="shuju_findby?keyword="+r;
			}
		});
	}
		function showall(){
			window.location="ziliao_shuaxin";
		}
	
		function update(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
// 				$.messager.alert('Info', row.itemid+":"+row.productid+":"+row.attr1);
				$('#tt').tabs('add',{
				title: '修改资料内容',
				content: "<iframe frameborder='no' src='ziliao_chaxun?iid="+row.itemid+"' style='width:1024px;height:600px;'></iframe>",
				closable: true
			});

			}	
		}

		function deletepart(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
				shanchu(row.name,row.itemid);
			}
		}		
		
		function shanchu(dname,dcode){
			$.messager.confirm('删除资料内容', '确定要删除资料: '+dname+dcode+'吗？', function(r){
				if (r){
					zhixingshanchu(dcode);
					$.messager.alert('提示','删除'+dcode+'成功!');
				}
			});
		}		

		function zhixingshanchu(dcode){
			window.location="ziliao_delete?iid="+dcode;
		}
		
		function shujuziliao(){
			window.location="shuju_find";
		}		
		
		var index = 0;
		function zengjia(){
			$('#tt').tabs('add',{
				title: '资料信息',
				content: "<iframe frameborder='no' src='ziliao_add' style='width:1024px;height:600px;'></iframe>",
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