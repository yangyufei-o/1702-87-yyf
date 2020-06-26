<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %><!-- 引入标签库  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>数据资料</title>
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
		        <span style="font-size:16px;margin-right:80px;font-weight:bold;color:#0079fd;">当前位置:>数据资料</span>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-loop" onclick="showall()">刷新</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-search" onclick="sousuo()">搜索</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-plus" onclick="zengjia()">添加</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-trash" onclick="deletepart()">删除</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-compose" onclick="update()">修改</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-compose" onclick="chakan()">查看资料内容</button>
		        <button type="button" id="bt" class="mui-btn mui-btn-primary mui-icon mui-icon-arrowthinleft" onclick="fanhui()">返回</button>

		    </div>
		</div>

		<div id="tt" class="easyui-tabs" data-options="tools:'#tab-tools'" style="width:1030px;height:640px;">
		<div title="数据资料" style="width:200px;height:200px;">
		
			<table id="dg" class="easyui-datagrid" title=" " style="width:1020px;height:600px"
					data-options="singleSelect:true,url:'datagrid_data1.json',method:'get'">
				<thead>
					<tr>
						<th data-options="field:'D',width:30">序号</th>
						<th data-options="field:'name',width:200">名称</th>
						<th data-options="field:'itemid',width:100">编号</th>
						<th data-options="field:'m',width:200">扩展字段1</th>
						<th data-options="field:'n',width:200">扩展字段2</th>
						<th data-options="field:'q',width:200">扩展字段3</th>
					</tr>
				</thead>
				<tbody>
						<s:iterator value="listdi" status="st">
							<tr>
								<td>${ st.index+1}</td>
								<td><s:property value="d_name"/> </td>
								<td><s:property value="d_code"/> </td>
								<td><s:property value="d_extend1"/> </td>
								<td><s:property value="d_extend2"/> </td>
								<td><s:property value="d_extend3"/> </td>
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
			window.location="shuju_find";
		}
	
		function update(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
// 				$.messager.alert('Info', row.itemid+":"+row.productid+":"+row.attr1);
				$('#tt').tabs('add',{
				title: '修改资料',
				content: "<iframe frameborder='no' src='shuju_chaxun?dcode="+row.itemid+"' style='width:1024px;height:600px;'></iframe>",
				closable: true
			});

			}	
		}

		function chakan(){
			var row = $('#dg').datagrid('getSelected');
				if (row){
// 					$.messager.alert('提示','删除'+row.itemid+'成功!');
					window.location="ziliao_find?datacode="+row.itemid;
				}
			}	
	
		
		function deletepart(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
				shanchu(row.name,row.itemid);
			}
		}		
		
		function shanchu(dname,dcode){
			$.messager.confirm('删除资料', '确定要删除资料: '+dname+dcode+'吗？', function(r){
				if (r){
					zhixingshanchu(dcode);
					$.messager.alert('提示','删除'+dcode+'成功!');
				}
			});
		}		

		function zhixingshanchu(dcode){
			window.location="shuju_delete?dcode="+dcode;
		}
		
		
		var index = 0;
		function zengjia(){
			$('#tt').tabs('add',{
				title: '资料信息',
				content: "<iframe frameborder='no' src='shuju_add' style='width:1024px;height:600px;'></iframe>",
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