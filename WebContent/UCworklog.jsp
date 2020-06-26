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
		<form action="rizhi_save" id="ff" class="easyui-form" method="post" data-options="novalidate:true">
			<div style="margin-bottom:20px;">
				<input type="hidden" name = "l_id" value="<s:property value='worklog.l_id'/>">
				<input class="easyui-textbox" name="l_name" style="width:45%" data-options="label:'员工姓名:',required:true" value="<s:property value='username'/>">
				<span style="margin-left:10px;margin-right:32px;">创建时间:</span><input value="<s:property value='worklog.l_found'/>" name="l_found" class="easyui-datebox" labelPosition="top" style="width:33%;" data-options="label:'',required:false">
			</div>
			<div style="margin-bottom:20px;">
				<input   class="easyui-textbox" name="l_part" style="width:45%" data-options="label:'员工部门:',required:true"  value="<s:property value='userpart'/>">				
				<span style="margin-right:11px;"></span>客户名称:<select  name="l_cutsname" class="xingbie" style="margin-left:32px;"><option value="<s:property value='worklog.l_cutsname'/>"><s:property value='worklog.l_cutsname'/></option><s:iterator value="listc"><option value="<s:property value='c_name'/>"><s:property value="c_name"/></option></s:iterator></select>	
			</div>
			<div style="margin-bottom:20px;">
				<span >优先级别:</span><select  name="l_level" class="bumen"><option value="<s:property value='worklog.l_level'/>"><s:property value='worklog.l_level'/></option><s:iterator value="listl"><option value="<s:property value='i_info'/>"><s:property value="i_info"/></option></s:iterator></select>
				<span style="margin-right:11px;"></span>类别:<select  name="l_type" class="xingbie"><option value="<s:property value='worklog.l_type'/>"><s:property value='worklog.l_type'/></option><s:iterator value="listt"><option value="<s:property value='i_info'/>"><s:property value="i_info"/></option></s:iterator></select>	
			</div>				
			<div style="margin-bottom:20px;">
				<span style="margin-right:32px;">开始时间:</span><input value="<s:property value='worklog.l_start'/>" name="l_start" class="easyui-datebox" labelPosition="top" style="width:33%;" data-options="label:'',required:true">
				<span style="margin-left:10px;margin-right:32px;">结束时间:</span><input value="<s:property value='worklog.l_end'/>" name="l_end" class="easyui-datebox" labelPosition="top" style="width:33%;" data-options="label:'',required:false">
			</div>			
			<div style="margin-bottom:20px;">
				<input value="<s:property value='worklog.l_theme'/>"  class="easyui-textbox" name="l_theme" style="width:45%" data-options="label:'日志主题:',required:true">&nbsp;&nbsp;
				</span>处理状态:<select  name="l_status" class="xingbie" style="margin-left:32px;"><option value="<s:property value='worklog.l_status'/>"><s:property value='worklog.l_status'/></option><option value="未处理">未处理</option><option value="已处理">已处理</option></select>
			</div>						
			<div style="margin-bottom:20px;">
				<input value="<s:property value='worklog.l_detail'/>"  class="easyui-textbox" name="l_detail" style="width:45%" data-options="label:'详细内容:',required:true">				
				<span style="margin-right:11px;"></span>是否提酬:<select  name="l_money" class="xingbie" style="margin-left:32px;"><option value="<s:property value='worklog.l_money'/>"><s:property value='worklog.l_money'/></option><option value="是">是</option><option value="否">否</option></select>	
			</div>	
			<div style="margin-bottom:20px;">
				<input value="<s:property value='worklog.l_extend1'/>"  class="easyui-textbox" name="l_extend1" style="width:45%" data-options="label:'扩展字段1:',required:false">&nbsp;&nbsp;&nbsp;
				<input value="<s:property value='worklog.l_extend2'/>"  class="easyui-textbox" name="l_extend2" style="width:45%" data-options="label:'扩展字段2:',required:false">
			</div>	
			<div style="margin-bottom:20px;">
				<input value="<s:property value='worklog.l_extend3'/>"  class="easyui-textbox" name="l_extend3" style="width:45%" data-options="label:'扩展字段3:',required:false">&nbsp;&nbsp;&nbsp;
				<input value="<s:property value='worklog.l_extend4'/>"  class="easyui-textbox" name="l_extend4" style="width:45%" data-options="label:'扩展字段4:',required:false">
			</div>
			<div style="margin-bottom:20px;">
				<input value="<s:property value='worklog.l_extend5'/>"  class="easyui-textbox" name="l_extend5" style="width:92%" data-options="label:'扩展字段5:',required:false">&nbsp;&nbsp;&nbsp;
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