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


	<div style="width:750px;margin:0 auto;margin-top:1px;">
	
	<div class="easyui-panel"  style="width:100%;max-width:750px;padding-top:10px;padding-bottom:10px;padding-left:20px;">
		<form action="kehu_save" id="ff" class="easyui-form" method="post" data-options="novalidate:true">
			<div style="margin-bottom:20px;">
				<input value="<s:property value='customer.c_name'/>"  class="easyui-textbox" name="c_name" style="width:45%" data-options="label:'客户名称:',required:true">&nbsp;&nbsp;
				<input value="<s:property value='customer.c_rersource'/>"  class="easyui-textbox" name="c_rersource" style="width:45%" data-options="label:'客户来源:',required:true">
			</div>
			<div style="margin-bottom:20px;">
				<input value="<s:property value='customer.c_code'/>"  class="easyui-textbox" name="c_code" style="width:45%" data-options="label:'客户编码:',required:true">&nbsp;&nbsp;
				<input value="<s:property value='customer.c_shortname'/>"  class="easyui-textbox" name="c_shortname" style="width:45%" data-options="label:'客户简称:',required:true">&nbsp;&nbsp;	
			</div>
			<div style="margin-bottom:20px;">
				<span >客户类别:</span><select     name="c_category" class="bumen"><option value="<s:property value='customer.c_shortname'/>"><s:property value='customer.c_shortname'/></option><option value="硬件行业">硬件行业</option><option value="软件行业">软件行业</option></select>
				<span style="margin-right:11px;"></span>所属员工:<select style="margin-left:32px;" name="ecode" class="xingbie"><option value="<s:property value='ecode'/>"><s:property value='ename'/></option><s:iterator value="lists"><option value="<s:property value='e_code'/>"><s:property value="e_name"/></option></s:iterator></select>	
			</div>
			<div style="margin-bottom:20px;">
				<span >行业类别:</span><select     name="c_industy" class="bumen"><option value="<s:property value='customer.c_industy'/>"><s:property value='customer.c_industy'/></option><s:iterator value="listy"><option value="<s:property value='i_info'/>"><s:property value="i_info"/></option></s:iterator></select>
				<span style="margin-right:11px;"></span>客户类型:<select style="margin-left:32px;" name="c_type" class="xingbie"><option value="<s:property value='customer.c_type'/>"><s:property value='customer.c_type'/></option><s:iterator value="listl"><option value="<s:property value='i_info'/>"><s:property value="i_info"/></option></s:iterator></select>	
			</div>		
				
			<div style="margin-bottom:20px;">
				<span >所属地区:</span><select  name="c_region" class="bumen"><option value="<s:property value='customer.c_region'/>"><s:property value='customer.c_region'/></option><s:iterator value="listf"><option value="<s:property value='i_info'/>"><s:property value="i_info"/></option></s:iterator></select>
				<span style="margin-right:11px;"></span>成交几率:<select style="margin-left:32px;" name="c_probability" class="xingbie"><option value="<s:property value='customer.c_probability'/>"><s:property value='customer.c_probability'/></option><s:iterator value="listj"><option value="<s:property value='i_info'/>"><s:property value="i_info"/></option></s:iterator></select>	
			</div>				
			
			<div style="margin-bottom:20px;">	
				<span style="margin-right:0px;">客户状态:</span><select style="margin-left:32px;"  name="c_status" class="xingbie"><option value="<s:property value='customer.c_status'/>"><s:property value='customer.c_status'/></option><s:iterator value="listz"><option value="<s:property value='i_info'/>"><s:property value="i_info"/></option></s:iterator></select>	
				&nbsp;&nbsp;<input value="<s:property value='customer.c_qq'/>" class="easyui-textbox" name="c_qq" style="width:45%" data-options="label:'客户QQ:',required:true">&nbsp;&nbsp;	
			</div>				

			<div style="margin-bottom:20px;">
				<input  value="<s:property value='customer.c_extend1'/>" class="easyui-textbox" name="c_extend1" style="width:45%" data-options="label:'扩展字段1:',required:true">&nbsp;&nbsp;
				<input  value="<s:property value='customer.c_extend2'/>" class="easyui-textbox" name="c_extend2" style="width:45%" data-options="label:'扩展字段2:',required:true">&nbsp;&nbsp;	
			</div>												
				
			<div style="margin-bottom:20px;">
				<input value="<s:property value='customer.c_extend3'/>"  class="easyui-textbox" name="c_extend3" style="width:45%" data-options="label:'扩展字段3:',required:true">&nbsp;&nbsp;
				<input value="<s:property value='customer.c_extend4'/>"  class="easyui-textbox" name="c_extend4" style="width:45%" data-options="label:'扩展字段4:',required:true">&nbsp;&nbsp;	
			</div>
<!-- 			<div style="margin-bottom:20px;"> -->
<%-- 				<input value="<s:property value='customer.c_extend5'/>"  class="easyui-textbox" name="c_extend5" style="width:92%" data-options="label:'扩展字段5:',required:true">&nbsp;&nbsp;	 --%>
<!-- 			</div>										 -->
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