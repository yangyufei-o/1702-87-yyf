<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %><!-- 引入标签库  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>客户信息</title>
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


	<form action="lianxiren_save" id="ff" class="easyui-form" method="post" data-options="novalidate:true">

	<div style="width:750px;margin:0 auto;margin-top:1px;">
	
	<div class="easyui-panel"  style="width:100%;max-width:750px;padding-top:0px;padding-bottom:1px;padding-left:20px;">
		
			<div style="margin-bottom:20px;">
			<div style="margin-bottom:20px;">
				<input value="<s:property value='linkMan.l_name'/>" class="easyui-textbox" name="l_name" style="width:45%" data-options="label:'姓名:',required:true">&nbsp;&nbsp;
				<input value="<s:property value='linkMan.l_nickname'/>" class="easyui-textbox" name="l_nickname" style="width:45%" data-options="label:'昵称:',required:true">
			</div>
			<div style="margin-bottom:20px;">
				<input value="<s:property value='linkMan.l_code'/>" class="easyui-textbox" name="l_code" style="width:45%" data-options="label:'助记码:',required:true">&nbsp;&nbsp;
				<span ></span>性别:<select  name="l_sex" class="xingbie" style="margin-left:55px;"><option value="<s:property value='linkMan.l_sex'/>"><s:property value='linkMan.l_sex'/></option><option value="男">男</option><option value="女">女</option></select>
			</div>	
			<div style="margin-bottom:20px;">
				<span  style="margin-right:32px;">出生日期:</span><input value="<s:property value='linkMan.l_birth'/>"  name="l_birth" class="easyui-datebox" labelPosition="top" style="width:33%;" data-options="label:'',required:true">
				<span style="margin-left:10px;margin-right:32px;">农历生日:</span><input value="<s:property value='linkMan.l_birthday'/>" name="l_birthday" class="easyui-datebox" labelPosition="top" style="width:33%;" data-options="label:'',required:false">
			</div>					
			<div style="margin-bottom:20px;">
				<input value="<s:property value='linkMan.l_tel'/>" class="easyui-textbox" name="l_tel" style="width:45%" data-options="label:'手机号码:',required:true">&nbsp;&nbsp;
				<input value="<s:property value='linkMan.l_phone'/>"  class="easyui-textbox" name="l_phone" style="width:45%" data-options="label:'办公电话:',required:true">
			</div>
			<div style="margin-bottom:20px;">
				<input value="<s:property value='linkMan.l_address'/>" class="easyui-textbox" name="l_address" style="width:45%" data-options="label:'办公地址:',required:true">&nbsp;&nbsp;
				<input value="<s:property value='linkMan.l_qq'/>" class="easyui-textbox" name="l_qq" style="width:45%" data-options="label:'qq号码:',required:true">
			</div>
			<div style="margin-bottom:20px;">
				<input value="<s:property value='linkMan.l_mail'/>" class="easyui-textbox" name="l_mail" style="width:45%" data-options="label:'电子邮箱:',required:true">&nbsp;&nbsp;
				<input value="<s:property value='linkMan.l_like'/>" class="easyui-textbox" name="l_like" style="width:45%" data-options="label:'业余爱好:',required:false">
			</div>

			<div style="margin-bottom:20px;">
				<span style="margin-right:24px;" >职务:</span><select  name="l_duty" class="bumen"><option value="<s:property value='linkMan.l_duty'/>"><s:property value='linkMan.l_duty'/></option><s:iterator value="listj"><option value="<s:property value='i_info'/>"><s:property value="i_info"/></option></s:iterator></select>&nbsp;&nbsp;
				<input value="<s:property value='linkMan.l_job'/>" class="easyui-textbox" name="l_job" style="width:45%" data-options="label:'负责业务:',required:true">	
			</div>
			<div style="margin-bottom:20px;">
				<input  value="<s:property value='linkMan.l_extend1'/>" class="easyui-textbox" name="l_extend1" style="width:45%" data-options="label:'扩展字段1:',required:false">&nbsp;&nbsp;
				<input  value="<s:property value='linkMan.l_extend2'/>" class="easyui-textbox" name="l_extend2" style="width:45%" data-options="label:'扩展字段2:',required:false">&nbsp;&nbsp;	
			</div>												
				
			<div style="margin-bottom:20px;">
				<input value="<s:property value='linkMan.l_extend3'/>"  class="easyui-textbox" name="l_extend3" style="width:45%" data-options="label:'扩展字段3:',required:false">&nbsp;&nbsp;
				<input value="<s:property value='linkMan.l_extend4'/>"  class="easyui-textbox" name="l_extend4" style="width:45%" data-options="label:'扩展字段4:',required:false">&nbsp;&nbsp;	
			</div>
			<div style="margin-bottom:20px;">
				<input value="<s:property value='linkMan.l_extend5'/>"  class="easyui-textbox" name="l_extend5" style="width:92%" data-options="label:'扩展字段5:',required:false">&nbsp;&nbsp;	
			</div>										
	
		<div style="text-align:center;padding:5px 0;">
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()" style="width:80px">保存</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()" style="width:80px">重置</a>
		</div>
	</div>
	</div>
		</form>
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