<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %><!-- 引入标签库  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>员工信息</title>
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
		<form action="yuangong_save" id="ff" class="easyui-form" method="post" data-options="novalidate:true">
			<div style="margin-bottom:20px;">
				<input value="<s:property value='employee.e_name'/>"  class="easyui-textbox" name="e_name" style="width:45%" data-options="label:'员工姓名:',required:true">&nbsp;&nbsp;
				<input value="<s:property value='employee.e_code'/>" class="easyui-textbox" name="e_code" style="width:45%" data-options="label:'员工编码:',required:true">
			</div>
			<div style="margin-bottom:20px;">
				<span style="margin-right:32px;">出生日期:</span><input value="<s:property value='employee.e_birth'/>" name="e_birth" class="easyui-datebox" labelPosition="top" style="width:33%;" data-options="label:'',required:true">
				<span style="margin-right:11px;"></span>性别:<select  name="e_sex" class="xingbie"><option value="<s:property value='employee.e_sex'/>"><s:property value='employee.e_sex'/></option><option value="男">男</option><option value="女">女</option></select>
			</div>
			<div style="margin-bottom:20px;">
				<span >所属部门:</span>
				<select name="dpart" class="bumen"><option value="<s:property value='dpart'/>"><s:property value="dname"/></option><s:iterator value="listp"><option value="<s:property value='d_code'/>"><s:property value="d_name"/></option></s:iterator>
				</select><span style="margin-right:11px;"></span>职务:<select name="e_job" class="xingbie"><option value="<s:property value='employee.e_job'/>"><s:property value='employee.e_job'/></option><s:iterator value="listj"><option value="<s:property value='i_info'/>"><s:property value="i_info"/></option>	</s:iterator></select>	
			</div>			
			<div style="margin-bottom:20px;">
				<span >员工岗位:</span><select  name="e_post" class="bumen"><option value="<s:property value='employee.e_job'/>"><s:property value='employee.e_job'/></option><s:iterator value="listd"><option value="<s:property value='i_info'/>"><s:property value="i_info"/></option>	</s:iterator></select>
				<span style="margin-right:11px;"></span>职称:<select  name="e_jobfunctions" class="xingbie"><option value="<s:property value='employee.e_jobfunctions'/>"><s:property value='employee.e_jobfunctions'/><s:iterator value="listn"><option value="<s:property value='i_info'/>"><s:property value="i_info"/></option>	</s:iterator></select>
			</div>
			<div style="margin-bottom:20px;">
				<input value="<s:property value='employee.e_tel'/>"  class="easyui-textbox" name="e_tel" style="width:45%" data-options="label:'联系电话:',required:false">&nbsp;&nbsp;
				<input value="<s:property value='employee.e_phone'/>"  class="easyui-textbox" name="e_phone" style="width:45%" data-options="label:'家庭电话:',required:false">
			</div>
			<div style="margin-bottom:20px;">
				<input value="<s:property value='employee.e_address'/>"  class="easyui-textbox" name="e_address" style="width:45%" data-options="label:'家庭住址:',required:false">&nbsp;&nbsp;
				<input value="<s:property value='employee.e_qq'/>" class="easyui-textbox" name="e_qq" style="width:45%" data-options="label:'员工qq:',required:false">
			</div>
			<div style="margin-bottom:20px;">
				<input value="<s:property value='employee.e_mail'/>" class="easyui-textbox" name="e_mail" style="width:45%" data-options="label:'电子邮箱:',required:false">&nbsp;&nbsp;
				<span ></span>员工状态:<select  name="e_status" class="xingbie" style="margin-left:32px;"><option value="<s:property value='employee.e_status'/>"><s:property value='employee.e_status'/></option><option value="男">在职</option><option value="女">离职</option></select>				
			</div>
			<div style="margin-bottom:20px;">
				<span style="margin-right:32px;">入职时间:</span><input value="<s:property value='employee.e_start'/>" name="e_start" class="easyui-datebox" labelPosition="top" style="width:33%;" data-options="label:'',required:true">
				<span style="margin-left:10px;margin-right:32px;">离职时间:</span><input value="<s:property value='employee.e_start'/>" name="e_end" class="easyui-datebox" labelPosition="top" style="width:33%;" data-options="label:'',required:false">
			</div>
			<div style="margin-bottom:20px;">
				<input value="<s:property value='employee.e_duty'/>" class="easyui-textbox" name="e_duty" style="width:45%" data-options="label:'工作职责:',required:false">&nbsp;&nbsp;
				<input value="<s:property value='employee.e_extend1'/>" class="easyui-textbox" name="e_extend1" style="width:45%" data-options="label:'扩展字段1:',required:false">&nbsp;&nbsp;
			</div>									
				
			<div style="margin-bottom:20px;">
				<input value="<s:property value='employee.e_extend2'/>" class="easyui-textbox" name="e_extend2" style="width:45%" data-options="label:'扩展字段2:',required:false">&nbsp;&nbsp;
				<input value="<s:property value='employee.e_extend5'/>" class="easyui-textbox" name="e_extend5" style="width:45%" data-options="label:'密码:',required:false">&nbsp;&nbsp;
			</div>	
			<div style="margin-bottom:20px;">
				<input value="<s:property value='employee.e_extend4'/>" class="easyui-textbox" name="e_extend4" style="width:45%" data-options="label:'角色编码:',required:false">&nbsp;&nbsp;	
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