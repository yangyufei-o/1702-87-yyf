<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %><!-- 引入标签库  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="js/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="js/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="js/demo/demo.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>

</head>
<body>



	<div style="width:750px;background:pink;margin:0 auto;margin-top:40px;">
	
	<div class="easyui-panel" title=" " style="width:100%;max-width:750px;padding:30px 60px;">
		<form action="bumen_save" id="ff" class="easyui-form" method="post" data-options="novalidate:true">
			<div style="margin-bottom:20px;">
				<input value="<s:property value='department.d_name'/>" class="easyui-textbox" name="d_name" style="width:45%" data-options="label:'名称:',required:true">&nbsp;&nbsp;
				<input <s:property value='bukeyong'/> value="<s:property value='department.d_code'/>" class="easyui-textbox" name="d_code" style="width:45%" data-options="label:'编码:',required:true">
			</div>
			<div style="margin-bottom:20px;">
				<input value="<s:property value='department.d_helpcode'/>" class="easyui-textbox" name="d_helpcode" style="width:45%" data-options="label:'助记码:',required:true">&nbsp;&nbsp;
				<input value="<s:property value='department.d_principal'/>" class="easyui-textbox" name="d_principal" style="width:45%" data-options="label:'负责人:',required:true">
			</div>			
			<div style="margin-bottom:20px;">
				<input value="<s:property value='department.d_phone'/>" class="easyui-textbox" name="d_phone" style="width:45%" data-options="label:'部门电话:',required:false">&nbsp;&nbsp;
				<input value="<s:property value='department.d_num'/>" class="easyui-textbox" name="d_num" style="width:45%" data-options="label:'部门人数:',required:true">
			</div>
			<div style="margin-bottom:20px;">
				<input value="<s:property value='department.d_extend1'/>" class="easyui-textbox" name="d_extend1" style="width:45%" data-options="label:'扩展字段1:',required:false">&nbsp;&nbsp;
				<input value="<s:property value='department.d_extend2'/>" class="easyui-textbox" name="d_extend2" style="width:45%" data-options="label:'扩展字段2:',required:false">
			</div>
			<div style="margin-bottom:20px;">
				<input value="<s:property value='department.d_extend3'/>" class="easyui-textbox" name="d_extend3" style="width:45%" data-options="label:'扩展字段3:',required:false">&nbsp;&nbsp;
				<input value="<s:property value='department.d_extend4'/>" class="easyui-textbox" name="d_extend4" style="width:45%" data-options="label:'扩展字段4:',required:false">
			</div>
			<div style="margin-bottom:20px;">
				<input value="<s:property value='department.d_extend5'/>" class="easyui-textbox" name="d_extend5" style="width:92%" data-options="label:'扩展字段5:',required:false">&nbsp;&nbsp;
			</div>				
			
		</form>
		<div style="text-align:center;padding:5px 0;">
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()" style="width:80px">保存</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()" style="width:80px">重置</a>
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