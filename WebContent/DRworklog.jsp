<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %><!-- 引入标签库  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>工作日志</title>
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
		    	<span style="font-size:16px;margin-right:80px;font-weight:bold;color:#0079fd;">当前位置:>工作日志</span>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-loop" onclick="showall()">刷新</button>
<!-- 		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-search" onclick="sousuo()">搜索</button> -->
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-plus" onclick="zengjia()">添加</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-trash" onclick="deletepart()">删除</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-compose" onclick="update()">修改</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-arrowthinleft" onclick="fanhui()">返回</button>

		    </div>
		</div>

		<div id="tt" class="easyui-tabs" data-options="tools:'#tab-tools'" style="width:1030px;height:640px;">
		<div title="所有日志" style="width:200px;height:200px;">
		
			<table id="dg" class="easyui-datagrid" title=" " style="width:1020px;height:600px"
					data-options="singleSelect:true,url:'datagrid_data1.json',method:'get'">
				<thead>
					<tr>
						<th data-options="field:'D',width:30">序号</th>
						<th data-options="field:'id',width:30" hidden="hidden"></th>
						<th data-options="field:'name',width:100">员工姓名</th>
						<th data-options="field:'itemid',width:100">员工部门</th>
						<th data-options="field:'listprice',width:80,align:'right'">创建时间</th>
						<th data-options="field:'unitcost',width:80,align:'right'">客户名称</th>
						<th data-options="field:'a',width:100">类别</th>
						<th data-options="field:'b',width:100">优先级别</th>
						<th data-options="field:'c',width:100">开始时间</th>
						<th data-options="field:'d',width:100">结束时间</th>
						<th data-options="field:'e',width:100">处理状态</th>
						<th data-options="field:'f',width:100">日志主题</th>
						<th data-options="field:'g',width:100">是否提酬</th>
						<th data-options="field:'h',width:100">详细内容</th>
						<th data-options="field:'m',width:100">扩展字段1</th>
						<th data-options="field:'n',width:100">扩展字段2</th>
						<th data-options="field:'q',width:100">扩展字段3</th>
						<th data-options="field:'p',width:100">扩展字段4</th>
						<th data-options="field:'q',width:100">扩展字段5</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="listwl" status="st">
						<tr>
							<td>${ st.index+1 }</td>
							<td hidden="hidden"><s:property value="l_id"/></td>
							<td><s:property value="l_name"/></td>
							<td><s:property value="l_part"/></td>
							<td><s:property value="l_found"/></td>
							<td><s:property value="l_cutsname"/></td>
							<td><s:property value="l_type"/></td>
							<td><s:property value="l_level"/></td>
							<td><s:property value="l_start"/></td>
							<td><s:property value="l_end"/></td>
							<td><s:property value="l_status"/></td>
							<td><s:property value="l_theme"/></td>
							<td><s:property value="l_money"/></td>
							<td><s:property value="l_detail"/></td>
							<td><s:property value="l_extend1"/></td>
							<td><s:property value="l_extend2"/></td>
							<td><s:property value="l_extend3"/></td>
							<td><s:property value="l_extend4"/></td>
							<td><s:property value="l_extend5"/></td>
						
						</tr>				
					</s:iterator>
				</tbody>
			</table>		
		</div>
		
		</div>
		
</body>





	<script type="text/javascript">

		function showall(){
			window.location="rizhi_find";
		}
	
		function update(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
// 				$.messager.alert('Info', row.itemid+":"+row.productid+":"+row.attr1);
				$('#tt').tabs('add',{
				title: '修改日志',
				content: "<iframe frameborder='no' src='rizhi_chaxun?lid="+row.id+"' style='width:1024px;height:600px;'></iframe>",
				closable: true
			});

			}	
		}

		function deletepart(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
// 				$.messager.alert('Info', row.itemid+":"+row.productid+":"+row.attr1);
				shanchu(row.name,row.id);
			}
		}		
		
		function shanchu(lname,lid){
			$.messager.confirm('删除员工', '确定要删除员工: '+lname+lid+'吗？', function(r){
				if (r){
					zhixingshanchu(lid);
					$.messager.alert('提示','删除'+lid+'成功!');
				}
			});
		}		

		function zhixingshanchu(lid){
			window.location="rizhi_delete?lid="+lid;
		}
		
		
		var index = 0;
		function zengjia(){
			$('#tt').tabs('add',{
				title: '日志信息',
				content: "<iframe frameborder='no' src='rizhi_add' style='width:1024px;height:600px;'></iframe>",
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