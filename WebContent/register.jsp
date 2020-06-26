<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %><!-- 引入标签库  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>       
<%@ include file="head.jsp" %>    
<!doctype html>
<html lang="en">
  <head>
  <meta charset="UTF-8">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>注册用户</title>
<style type="text/css">
@import url("css/yangshi1.css");
</style>
<link href="css/css_index.css" type="text/css" rel="stylesheet"  />
<script language="javascript" type="text/javascript" src="js/JQuery1.3.1.js"></script>
<script src="js/jquery.KinSlideshow-1.2.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script> 
	<link rel="stylesheet" type="text/css" href="js/themes/default/easyui.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>

</head>
 
<body>

<center>
<!-- 主题内容 -->
<div id="bigbody" >
<div id="pagebody">
<div id="zhucetishi"><p id="text">注册新用户，开始使用海博产品</p></div>
<div id="triangle-down"></div><!-- 三角形 -->
<div id="zhucexinxi">
<form  method="post" action="yuangong_saveNewEmp" name="registerform" >
<font id="zitiyangshi">
<br />
<table id="infotable"><!--    <tr ><td class="youduiqi"></td><td></td></tr>  onkeydown="jiaoyanmima('upassword')" -->
<tr ><td class="youduiqi">用户名:</td><td><input type="text"  id="username" class="userinfo" name="e_name" onclick="huode('username')" onfocus="huode('username')" onblur="yonghumingshiqu('username')"/>
<div id="yonghuming"><span id="usernameend">请输入用户名</span></div></td></tr>
<tr ><td class="youduiqi">拼音码:</td><td><input type="text" id="usercode" name="e_code" class="userinfo" onclick="huodejiaodian('useremail')" onblur="checkemail('useremail')"/>
<div id="mima"><span id="emailend"></span></div></td></tr>

	<tr ><td class="youduiqi" >所属部门:</td><td>
	<select name="dpart" class="userinfo"><option value="<s:property value='dpart'/>"><s:property value="dname"/></option><s:iterator value="listp"><option value="<s:property value='d_code'/>"><s:property value="d_name"/></option></s:iterator>  
	</td></tr>

<tr ><td class="youduiqi">密码:</td><td><input type="password" id="upassword" class="userinfo" name="e_extend5" onclick="huodejiaodian('upassword')"  onblur="passweikong('upassword')" onkeypress="jiaoyanmima('upassword')"/>
<div id="mima"><span id="passwordend"></span></div></td></tr>
<tr ><td class="youduiqi">确认密码:</td><td><input type="password" id="confirmpassword" class="userinfo" name="confirmpassword" onblur="passshiqu('confirmpassword')" onclick="queren()" onkeyup="jiaoduimima('confirmpassword')"/>
<div id="mima"><span id="confirmpasswordend"></span></div></td></tr>
<tr ><td class="youduiqi">性别:</td><td><input type="radio" name="e_sex" value="男" checked="checked" />男&nbsp;&nbsp;<input type="radio" name="e_sex" value="女"/>女</td></tr>
<tr ><td class="youduiqi">手机号码:</td><td><input type="text" id="telnumber" name="e_tel" class="userinfo" onclick="huodejiaodian('telnumber')" onblur="checktel('telnumber')"/>
<div id="mima"><span id="telend"></span></div></td></tr>
<tr><td></td><td> <p id="shiyongxieyi">我已经阅读并接受海博科技服务条款</p> </td></tr>
<tr><td></td><td><div id="tijiao" ><a href="javascript:void(0)" onclick="jiaoyansuoyou()" style="background:#f17819; text-decoration:none; text-align:center; color:#FFFFFF; line-height:40px; font-size:20px; display:block; width:240px; height:40px;">创建用户</div></td></tr>
</table>
</font>

</form>
</div>
</div>
</div>
</center>
<div id="beian" style="margin-top:200px;"><p id="beianxinxi" style="color:#FFFFFF; margin-top:100px; height:50px; line-height:50px; text-align:center;">&copy;2015-2016&nbsp;greenskytechnology.cn&nbsp;粤ICP备10125号</p></div>
</body>
<script type="text/javascript">
//第三部分
window.onload = function t(){
var a = document.getElementById("username");
a.focus();
var t1 = document.getElementById("usernameend");
var t2 = document.getElementById("passwordend");
var t3 = document.getElementById("confirmpasswordend");
var t4 = document.getElementById("emailend");
var t5 = document.getElementById("telend");
t1.innerHTML= "<p id='morenwenben'>&nbsp;</p>";
t2.innerHTML= "<p id='morenwenben'>&nbsp;</p>";
t3.innerHTML= "<p id='morenwenben'>&nbsp;</p>";
t4.innerHTML= "<p id='morenwenben'>&nbsp;</p>";
t5.innerHTML= "<p id='morenwenben'>&nbsp;</p>";

}

//第二部分
function test(){
alert("hello,world");
}

var yonghuming = 0;
var mima1 = 0;
var mima2 = 0;
var youxiang = 0;
var dianhua = 0;
/*==============================================================*/
function jiaoyansuoyou(){
if((yonghuming!=0)&&(mima1!=0)&&(mima2!=0)&&(youxiang!=0)&&(dianhua!=0)){
var a1 = "用户名："+document.getElementById("username").value;
var a2 = "密码"+document.getElementById("upassword").value;
var a3 = "性别"+document.getElementsByName("sex");
registerform.submit();
}else{
	$.messager.alert('温馨提示','信息填写有误,请按提示填写正确信息!','warning');
;
}
}

function clearAllNode(parentNode){
   while (parentNode.firstChild) {
     var oldNode = parentNode.removeChild(parentNode.firstChild);
      oldNode = null;
    }
  }

//验证邮箱地址格式是否正确
function checkemail(tagname){
	var username = document.getElementById("usercode");
	var tempname = username.value;
	var nameend = document.getElementById("emailend");
	if(tempname.length==0){
	nameend.innerHTML ="<img src='img/cuowu.jpg' id='cuowu'>"+"<p id='cuowutishi'>拼音码不能为空！</p>";
	username.setAttribute("class","userinfow");
	}else{
	username.setAttribute("class","userinfo");
	nameend.innerHTML =  "<img src='img/zhengque.png' id='zhengque'>"+"<p id='tishiwenben'>输入正确</p>";
	youxiang=1;
	}
}
/*===================================================================================================================================*/

//验证电话号码是否正确
function checktel(tagname){
var a = document.getElementById(tagname);
var b = a.value;
var c = document.getElementById("telend");
var re = /^1\d{10}$/;
    if(re.test(b)){
	 a.setAttribute("class","userinfo");
	dianhua = 1;
     c.innerHTML  =  "<img src='img/zhengque.png' id='zhengque'>"+"<p id='tishiwenben'>输入正确</p>";
    }else{
	 a.setAttribute("class","userinfow");
     c.innerHTML  ="<img src='img/cuowu.jpg' id='cuowu'>"+"<p id='cuowutishi'>手机号码无效！</p>";
    }
	
}

//第一部分
//获得焦点时的事件响应方法
function huode(tagname){
var a = document.getElementById(tagname);
a.setAttribute("class","userinfo1");
var username = document.getElementById(tagname);
var tempname = username.value;
var nameend = document.getElementById("usernameend");
nameend.innerHTML = "<p id='morenwenben'>请输入用户名</p>";
}
function huodejiaodian(tagname){
var a = document.getElementById(tagname);
a.setAttribute("class","userinfo1");
}

function yonghumingshiqu(tagname){
var username = document.getElementById(tagname);
var tempname = username.value;
var nameend = document.getElementById("usernameend");
if(tempname.length==0){
nameend.innerHTML ="<img src='img/cuowu.jpg' id='cuowu'>"+"<p id='cuowutishi'>用户名不能为空！</p>";
username.setAttribute("class","userinfow");
}else{
username.setAttribute("class","userinfo");
nameend.innerHTML =  "<img src='img/zhengque.png' id='zhengque'>"+"<p id='tishiwenben'>输入正确</p>";
yonghuming=1;
}
}



//失去焦点后的事件响应方法
function shiqu(tagname){
var a = document.getElementById(tagname);
a.setAttribute("class","userinfo");

}

function jiaoyanmima(tagname){
var a = document.getElementById(tagname);
var b = a.value;
var c = document.getElementById("passwordend");
var str=b;
var d = str.replace(/[ ]/g, "");

if(d.length<8){
a.setAttribute("class","userinfo1");
c.innerHTML ="<img src='img/cuowu.jpg' id='cuowu'>"+"<p id='cuowutishi'>密码位数应大于9！</p>"; 
}else{
a.setAttribute("class","userinfo1");
c.innerHTML =  "<img src='img/zhengque.png' id='zhengque'>"+"<p id='tishiwenben'>输入正确</p>";
mima1 = 1;
}
}
function jiaoduimima(tagname){
var a = document.getElementById(tagname);
var prepass = (document.getElementById("upassword")).value;
var b = (a.value).replace(/[ ]/g, "");
var length = b.length;
var p1 = prepass.substring(0,length);
var q = (b+"vs"+p1);
if(b!=p1){
var a = document.getElementById("confirmpasswordend");
a.innerHTML ="<img src='img/cuowu.jpg' id='cuowu'>"+"<p id='cuowutishi'>前后密码不一致</p>"; 
}else{
var a = document.getElementById("confirmpasswordend");
a.innerHTML = "<p id='morenwenben'>请再次确认密码</p>";
if(b==prepass){
a.innerHTML =  "<img src='img/zhengque.png' id='zhengque'>"+"<p id='tishiwenben'>输入正确</p>";
mima2 = 1;
}else{
;
}
}
}
function passshiqu(tagname){
var a = document.getElementById(tagname);
var b = a.value;
var prepass = (document.getElementById("upassword")).value;

if(b!=prepass){
var c = document.getElementById("confirmpasswordend");
a.setAttribute("class","userinfow");
c.innerHTML="<img src='img/cuowu.jpg' id='cuowu'>"+"<p id='cuowutishi'>前后密码不一致</p>"; 
}else{
a.setAttribute("class","userinfo");
;
}

}
function queren(){
var b = document.getElementById("confirmpassword");
var a = document.getElementById("confirmpasswordend");
a.innerHTML =  "<p id='morenwenben'>请再次确认密码</p>";
b.setAttribute("class","userinfo1");
}

function passweikong(tagname){
var a = document.getElementById(tagname);
var b = a.value;
var c = document.getElementById("passwordend");
if(b==""){
a.setAttribute("class","userinfow");
c.innerHTML="<img src='img/cuowu.jpg' id='cuowu'>"+"<p id='cuowutishi'>密码不能为空！</p>"; 
}else{
a.setAttribute("class","userinfo");
;
}
}













$(function(){
$("#shangchengxiangxi").hide();
$("#xiazaizhongxinxiangxi").hide();
$("#fuwuxiangxi").hide();
$("#jiejuefanganxiangxi").hide();
$("#caidan").hide();
});

$("a.down").mouseenter(function(){
$("#caidan").slideDown(400);
})


$("#logo,#dingbu,a.up,#chanpintupian,#bigbody").mouseenter(function(){
$("#caidan").slideUp(400);
})



$("#chanpincaidan").mouseenter(function(){
$("#caidan").slideDown(400);
$("#shangchengxiangxi").hide();
$("#xiazaizhongxinxiangxi").hide();
$("#fuwuxiangxi").hide();
$("#jiejuefanganxiangxi").hide();
$("#chanpinxiangxi").show();
})

$("#jiejuefangan").mouseenter(function(){
$("#caidan").slideDown(400);
$("#shangchengxiangxi").hide();
$("#xiazaizhongxinxiangxi").hide();
$("#fuwuxiangxi").hide();
$("#chanpinxiangxi").hide();
$("#jiejuefanganxiangxi").show();
})

$("#fuwu").mouseenter(function(){
$("#caidan").slideDown(400);
$("#shangchengxiangxi").hide();
$("#xiazaizhongxinxiangxi").hide();
$("#chanpinxiangxi").hide();
$("#jiejuefanganxiangxi").hide();
$("#fuwuxiangxi").show();
})

$("#xiazaizhongxin").mouseenter(function(){
$("#caidan").slideDown(400);
$("#shangchengxiangxi").hide();
$("#chanpinxiangxi").hide();
$("#jiejuefanganxiangxi").hide();
$("#fuwuxiangxi").hide();
$("#xiazaizhongxinxiangxi").show();
})

$("#shangcheng").mouseenter(function(){
$("#caidan").slideDown(400);
$("#xiazaizhongxinxiangxi").hide();
$("#chanpinxiangxi").hide();
$("#jiejuefanganxiangxi").hide();
$("#fuwuxiangxi").hide();
$("#shangchengxiangxi").show();
})

</script>

</html>
