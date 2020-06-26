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
		margin-right:20px;
	}
	</style>
</head>
<body>


	<div style="width:900px;margin:0 auto;margin-top:0px;">
	
	<div class="easyui-panel"  style="width:100%;max-width:900px;padding-top:0px;padding-bottom:0px;padding-left:20px;">
		<form action="juese_save" id="ff" class="easyui-form" method="post" data-options="novalidate:true">


<div style="margin-bottom:5px;">
		  <input class="easyui-textbox" name="u_name" style="width:45%" data-options="label:'角色名称:',required:true">
</div>

<div style="margin-bottom:10px;">
	部门信息:<select  name="u_department" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi()'">可用</option></select>	
	增加部门:<select  name="u_adddepartment" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	修改部门:<select  name="u_updatedepartment" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	删除部门:<select  name="u_deletedepartment" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
</div>
<div style="margin-bottom:10px;">
	员工信息:<select  name="u_employee" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='yuangongxinxi()'">可用</option></select>	
	增加员工:<select  name="u_addemployee" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	修改员工:<select  name="u_updateemployee" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	删除员工:<select  name="u_deleteemployee" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
</div>			
<div style="margin-bottom:10px;">
	数据资料:<select  name="u_datainfo" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='shujuziliao()'">可用</option></select>			
</div>												
<div style="margin-bottom:10px;">
	工作日志:<select  name="u_worklog" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='gongzuorizhi()'">可用</option></select>	
	增加日志:<select  name="u_addworklog" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	修改日志:<select  name="u_updateworklog" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	删除日志:<select  name="u_deleteworklog" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
</div>
<div style="margin-bottom:10px;">
	工作计划:<select  name="u_workplane" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	增加计划:<select  name="u_addplane" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	修改计划:<select  name="u_updateplane" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	删除计划:<select  name="u_deleteworkplane" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
</div>			
<div style="margin-bottom:10px;">
	工作总结:<select  name="u_worksummary" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	增加总结:<select  name="u_addworksummary" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	修改总结:<select  name="u_updateworksummary" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	删除总结:<select  name="u_deleteworksummary" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
</div>
<div style="margin-bottom:10px;">
	个人任务:<select  name="u_personaltask" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	增加任务:<select  name="u_addpersonaltask" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	修改任务:<select  name="u_updatepersonaltask" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	删除任务:<select  name="u_deletepersonaltask" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
</div>
<div style="margin-bottom:10px;">
	所有任务:<select  name="u_alltask" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	增加任务:<select  name="u_addalltask" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	修改任务:<select  name="u_updatealltask" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	删除任务:<select  name="u_deletealltask" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
</div>			
<div style="margin-bottom:10px;">
	备用任务:<select  name="u_othertask" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	增加任务:<select  name="u_addothertask" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	修改任务:<select  name="u_updateothertask" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	删除任务:<select  name="u_deleteothertask" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
</div>				
<div style="margin-bottom:10px;">
	客户管理:<select  name="u_customer" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='kehuguanli()'">可用</option></select>	
	增加客户:<select  name="u_addcustomer" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	修改客户:<select  name="u_updatecustomer" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	删除客户:<select  name="u_deletecustomer" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
</div>
<div style="margin-bottom:10px;">
	操作日志:<select  name="u_systemlog" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='xitongrizhi()'">可用</option></select>		
</div>
<div style="margin-bottom:10px;">
	系统公告:<select  name="u_systemads" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi()'">可用</option></select>		
	增加公告:<select  name="u_addsystemads" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>		
	修改公告:<select  name="u_updatesystemads" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>		
	删除公告:<select  name="u_deletesystemads" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>		
</div>	
<div style="margin-bottom:10px;">
	客户信息:<select  name="u_customerinfo" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='kehuxinxi()'">可用</option></select>		
</div>			
<div style="margin-bottom:10px;">
	角色管理:<select  name="u_roleinfo" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='jueseguanli()'">可用</option></select>	
	增加角色:<select  name="u_addroleinfo" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi()'">可用</option></select>	
	修改角色:<select  name="u_updateroleinfo" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	删除角色:<select  name="u_deleteroleinfo" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
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



<!-- <div style="margin-bottom:10px;"> -->
<%-- 	客户类别:<select  name="ecode" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	 --%>
<%-- 	客户类别:<select  name="ecode" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	 --%>
<%-- 	客户类别:<select  name="ecode" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	 --%>
<%-- 	客户类别:<select  name="ecode" class="bumen" style="width:100px;"><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	 --%>
<!-- </div> -->




