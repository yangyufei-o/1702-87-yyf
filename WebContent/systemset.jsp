<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %><!-- 引入标签库  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>重置信息</title>
	<link rel="stylesheet" type="text/css" href="js/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="js/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="js/demo/demo.css">
<!-- 	<link rel="stylesheet" href="css/mui.min.css"> -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	<script src="js/mui.min.js"></script>
	<style type="text/css">
	
	.xingbie{
		border:1px solid #95b8e7;
		width:33%;
		margin-left:55px;
		height:25px;
		border-radius:4px;
	}
	.bumen{
		border:1px solid #95b8e7;
		width:33%;
		margin-left:32px;
		height:25px;
		border-radius:4px;
	}
	</style>
</head>
<body>

		
 <div style="display:inline;font-size:16px;margin-right:80px;font-weight:bold;color:#0079fd;">当前位置:>系统配置</div>
	<div style="width:750px;margin:0 auto;margin-top:100px;">
	
	<div class="easyui-panel"  style="width:100%;max-width:750px;padding-top:10px;padding-bottom:10px;padding-left:20px;">
		
		<form action="yuangong_reset" id="ff" class="easyui-form" method="post" data-options="novalidate:true">
			<div style="margin-bottom:20px;margin-left:150px;">
				<span style="margin-right:11px;"></span>重置所有用户角色为:
				<select  name="uid" class="xingbie">
				<s:iterator value="listu">
				<option  value="<s:property value='u_id'/>"><s:property value="u_name"/></option>	
				</s:iterator>
				</select>
			</div>
						
		</form>
		<div style="text-align:center;padding:5px 0;">
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()" style="width:80px">保存</a>
<!-- 			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()" style="width:80px">重置</a> -->
		</div>
	</div>
	</div>
	
</body>
	<script>
		function submitForm(){
			$('#ff').form('submit',{
				onSubmit:function(){
					return $(this).form('enableValidation').form('validate');
				}
			});
			$.messager.alert('提示','保存成功!');
		}
		function clearForm(){
			$('#ff').form('clear');
		}
	</script>
</html>