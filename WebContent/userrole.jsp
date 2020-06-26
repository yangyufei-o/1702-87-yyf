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

	<div style="width:850px;margin:0 auto;margin-top:0px;">
	
	<div class="easyui-panel"  style="width:100%;max-width:850px;padding-top:0px;padding-bottom:0px;padding-left:20px;">
	<form action="juese_save" id="ff" class="easyui-form" method="post" data-options="novalidate:true">
<div style="margin-bottom:5px;">
		  <input name="u_name" type="hidden" value="<s:property value='userRole.u_name'/>">
		  <input name="u_id" type="hidden" value="<s:property value='userRole.u_id'/>">
		  <input class="easyui-textbox"  value="<s:property value='userRole.u_name'/>" style="width:45%" data-options="label:'角色名称:',required:true">
</div>

<div style="margin-bottom:10px;">
	部门信息:<select  name="u_department" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_department'/>"><s:property value="userRole.u_department"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi()'">可用</option></select>	
	增加部门:<select  name="u_adddepartment" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_adddepartment'/>"><s:property value="userRole.u_adddepartment"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	修改部门:<select  name="u_updatedepartment" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_deletedepartment'/>"><s:property value="userRole.u_deletedepartment"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	删除部门:<select  name="u_deletedepartment" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_updatedepartment'/>"><s:property value="userRole.u_updatedepartment"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
</div>
<div style="margin-bottom:10px;">
	员工信息:<select  name="u_employee" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_employee'/>"><s:property value="userRole.u_employee"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='yuangongxinxi()'">可用</option></select>	
	增加员工:<select  name="u_addemployee" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_addemployee'/>"><s:property value="userRole.u_addemployee"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	修改员工:<select  name="u_updateemployee" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_updateemployee'/>"><s:property value="userRole.u_updateemployee"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	删除员工:<select  name="u_deleteemployee" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_deleteemployee'/>"><s:property value="userRole.u_deleteemployee"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
</div>			
<div style="margin-bottom:10px;">
	数据资料:<select  name="u_datainfo" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_datainfo'/>"><s:property value="userRole.u_datainfo"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='shujuziliao()'">可用</option></select>			
</div>												
<div style="margin-bottom:10px;">
	工作日志:<select  name="u_worklog" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_worklog'/>"><s:property value="userRole.u_worklog"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='gongzuorizhi()'">可用</option></select>	
	增加日志:<select  name="u_addworklog" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_addworklog'/>"><s:property value="userRole.u_addworklog"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	修改日志:<select  name="u_updateworklog" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_updateworklog'/>"><s:property value="userRole.u_updateworklog"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	删除日志:<select  name="u_deleteworklog" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_deleteworklog'/>"><s:property value="userRole.u_deleteworklog"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
</div>
<div style="margin-bottom:10px;">
	工作计划:<select  name="u_workplane" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_workplane'/>"><s:property value="userRole.u_workplane"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	增加计划:<select  name="u_addplane" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_addplane'/>"><s:property value="userRole.u_addplane"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	修改计划:<select  name="u_updateplane" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_updateplane'/>"><s:property value="userRole.u_updateplane"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	删除计划:<select  name="u_deleteworkplane" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_deleteworkplane'/>"><s:property value="userRole.u_deleteworkplane"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
</div>			
<div style="margin-bottom:10px;">
	工作总结:<select  name="u_worksummary" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_worksummary'/>"><s:property value="userRole.u_worksummary"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	增加总结:<select  name="u_addworksummary" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_addworksummary'/>"><s:property value="userRole.u_addworksummary"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	修改总结:<select  name="u_updateworksummary" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_updateworksummary'/>"><s:property value="userRole.u_updateworksummary"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	删除总结:<select  name="u_deleteworksummary" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_deleteworksummary'/>"><s:property value="userRole.u_deleteworksummary"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
</div>
<div style="margin-bottom:10px;">
	个人任务:<select  name="u_personaltask" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_personaltask'/>"><s:property value="userRole.u_personaltask"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	增加任务:<select  name="u_addpersonaltask" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_addpersonaltask'/>"><s:property value="userRole.u_addpersonaltask"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	修改任务:<select  name="u_updatepersonaltask" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_updatepersonaltask'/>"><s:property value="userRole.u_updatepersonaltask"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	删除任务:<select  name="u_deletepersonaltask" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_deletepersonaltask'/>"><s:property value="userRole.u_deletepersonaltask"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
</div>
<div style="margin-bottom:10px;">
	所有任务:<select  name="u_alltask" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_alltask'/>"><s:property value="userRole.u_alltask"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	增加任务:<select  name="u_addalltask" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_addalltask'/>"><s:property value="userRole.u_addalltask"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	修改任务:<select  name="u_updatealltask" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_updatealltask'/>"><s:property value="userRole.u_updatealltask"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	删除任务:<select  name="u_deletealltask" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_deletealltask'/>"><s:property value="userRole.u_deletealltask"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
</div>			
<div style="margin-bottom:10px;">
	备用任务:<select  name="u_othertask" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_othertask'/>"><s:property value="userRole.u_othertask"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	增加任务:<select  name="u_addothertask" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_addothertask'/>"><s:property value="userRole.u_addothertask"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	修改任务:<select  name="u_updateothertask" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_updateothertask'/>"><s:property value="userRole.u_updateothertask"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	删除任务:<select  name="u_deleteothertask" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_deleteothertask'/>"><s:property value="userRole.u_deleteothertask"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
</div>				
<div style="margin-bottom:10px;">
	客户管理:<select  name="u_customer" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_customer'/>"><s:property value="userRole.u_customer"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='kehuguanli()'">可用</option></select>	
	增加客户:<select  name="u_addcustomer" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_addcustomer'/>"><s:property value="userRole.u_addcustomer"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	修改客户:<select  name="u_updatecustomer" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_updatecustomer'/>"><s:property value="userRole.u_updatecustomer"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	删除客户:<select  name="u_deletecustomer" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_deletecustomer'/>"><s:property value="userRole.u_deletecustomer"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
</div>
<div style="margin-bottom:10px;">
	操作日志:<select  name="u_systemlog" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_customerinfo'/>"><s:property value="userRole.u_customerinfo"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='xitongrizhi()'">可用</option></select>		
</div>
<div style="margin-bottom:10px;">
	系统公告:<select  name="u_systemads" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_systemads'/>"><s:property value="userRole.u_systemads"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>		
	增加公告:<select  name="u_addsystemads" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_addsystemads'/>"><s:property value="userRole.u_addsystemads"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>		
	修改公告:<select  name="u_updatesystemads" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_updatesystemads'/>"><s:property value="userRole.u_updatesystemads"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>		
	删除公告:<select  name="u_deletesystemads" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_deletesystemads'/>"><s:property value="userRole.u_deletesystemads"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>		
</div>	
<div style="margin-bottom:10px;">
	客户信息:<select  name="u_customerinfo" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_customerinfo'/>"><s:property value="userRole.u_customerinfo"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>		
</div>			
<div style="margin-bottom:10px;">
	角色管理:<select  name="u_roleinfo" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_roleinfo'/>"><s:property value="userRole.u_roleinfo"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='jueseguanli()'">可用</option></select>	
	增加角色:<select  name="u_addroleinfo" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_addroleinfo'/>"><s:property value="userRole.u_addroleinfo"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	修改角色:<select  name="u_updateroleinfo" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_updateroleinfo'/>"><s:property value="userRole.u_updateroleinfo"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
	删除角色:<select  name="u_deleteroleinfo" class="bumen" style="width:100px;"><option value="<s:property value='userRole.u_deleteroleinfo'/>"><s:property value="userRole.u_deleteroleinfo"/></option><option value="hidden='hidden'">不可见</option><option value="onclick='warning()'">可见不可用</option><option value="onclick='bumenxinxi'">可用</option></select>	
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
	function baocun(){
		juese.submit();
		$.messager.alert('温馨提示','保存成功!','info');
	}
	
	window.onload = function(){
		translate();
	}
	
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
	
	
	function translate(){
		var inputs	 = document.getElementsByTagName("option");
		for(var i=0;i<inputs.length;i++){
			if(inputs[i].innerHTML=="hidden='hidden'"){
				inputs[i].innerHTML="不可见";
			}else if(inputs[i].innerHTML=="onclick='warning()'"){
				inputs[i].innerHTML="可见不可用";
			}else if(inputs[i].innerHTML.length>12){
				inputs[i].innerHTML="可用";
			}
			
		}
	}
	</script>
</html>