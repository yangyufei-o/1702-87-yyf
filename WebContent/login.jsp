<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
 <%@ include file="head.jsp" %>   
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>登录海博</title>
  <style type="text/css">
@import url("css/yangshi1.css");
</style>
<link href="css/css_index.css" type="text/css" rel="stylesheet"/>
<script language="javascript" type="text/javascript" src="js/JQuery1.3.1.js"></script>
<script src="js/jquery.KinSlideshow-1.2.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script> 
  	<style type="text/css">
	@import url("css/yangshi11.css");
	</style>
 </head>

<body style="height:800px;">




<center>
<div id="denglujiemian">
<div id="dengluzhuyemian">

<div id="zuobiantupian">

<img src="img/zuobiantupian1.jpg" width="460" id="leftlogo" />
</div>
<div id="youbianbiaodan">
<form name="denglubiaodan" action="login_login" method="post">
<table id="logininfo"><!-- <tr><td id="youduiqi">验&nbsp;证&nbsp;码:</td><td>&nbsp;</td></tr>  -->
<tr><td colspan="2" id="dengluwenjuanxing">登录海博<hr id="hengxian" /><hr id="sanjiaoxing" /></td></tr>
<tr><td id="youduiqi">用户名:&nbsp;&nbsp;</td><td class="dengluming"><input type="text" id="logininfomation0" name="Username" value="请输入用户名" onclick="qingkongneirong()" onblur="panduan()" /></td></tr>
<tr><td colspan="2" id="fengexian"></td></tr>
<tr><td id="youduiqi">密码:&nbsp;&nbsp;</td><td><input type="password" id="logininfomation1" name="Password" /></td></tr>

<tr><td>&nbsp;</td><td><div id="denlgluanniu" ><input type="submit" id="chaolianjie1" value="提交"   onclick="tijiao()" style="background:#f67819;color:white;font-size:16px;width:70px;height:32px;margin-top:-3px;"></div><div id="disanfangdenglu">第三方登录</div></td></tr>
<tr><td colspan="2" ><div id="lijizhuce" style="padding:0px;"  ><a style="display:block;line-height:30px;color:white;text-decoration:none;font-size:20px; height:30px;" href="yuangong_register">立即注册</a></div></td></tr>
</table>

</form>

</div>

</div>
</div>
</center>

<div id="beian" style="margin-top:370px;"><p id="beianxinxi" style="color:#FFFFFF; margin-top:100px; height:50px; line-height:50px; text-align:center;">&copy;2015-2016&nbsp;greenskytechnology.cn&nbsp;粤ICP备10125号</p></div>
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
alert("信息填写有误");
;
}
}

//生日——————创建年份的方法
var nian = 0;
var yue = 0;
var ri = 0;
function createyear(){
if(nian==0){
var fu = document.getElementById("birth1");
for(var i=1;i<50;i++){
var zi = document.createElement("option");
var ye = document.createTextNode((2016-i)+"年");
zi.appendChild(ye);
fu.appendChild(zi);
}
}else{
;
}
nian=1;
}

function createmonth(){
ri=0;
if(yue==0){
var fu = document.getElementById("birth2");
for(var i=2;i<13;i++){
var zi = document.createElement("option");
var ye = document.createTextNode((i)+"月");
zi.appendChild(ye);
fu.appendChild(zi);
}
}else{
;
}
yue=1;
}

function createday1(){
var a = document.getElementById("birth1");
var b = document.getElementById("birth2");
var a1=(a.value).substring(0,(a.value).length-1);/*得到年*/
var b1=(b.value).substring(0,(b.value).length-1);/*得到月*/
var temp = 0;
if(((a1%4)==0)&&((a1%100)!=0)){
temp=1;
alert("是闰年"+a1+"**"+b1);
;
}else{
alert("不是闰年"+b1);
temp=0;
;
}
}

function clearAllNode(parentNode){
   while (parentNode.firstChild) {
     var oldNode = parentNode.removeChild(parentNode.firstChild);
      oldNode = null;
    }
  }

function createday(){ 
if(ri==0){
var a = document.getElementById("birth1");
var b = document.getElementById("birth2");
var a1=(a.value).substring(0,(a.value).length-1);/*得到年*/
var b1=(b.value).substring(0,(b.value).length-1);/*得到月*/
var temp = 0;
var daynum = 0;
if(((a1%4)==0)&&((a1%100)!=0)){
temp=1;/*是闰年*/
;
}else if((a1%400)==0){
temp=1;/*是闰年*/
;
}else{
temp=0;/*不是闰年*/
}
if(b1==1||b1==3||b1==5||b1==7||b1==8||b1==10||b1==12){
daynum=31;
}else if(b1==4||b1==6||b1==9||b1==11){
daynum=30;
}else if(b1==2){
if(temp==0){
daynum=28;
}else {
daynum=29;
}
}else{
daynum=31;
}
var fu = document.getElementById("birth3");
clearAllNode(fu);
for(var i=1;i<daynum+1;i++){
var zi = document.createElement("option");
var ye = document.createTextNode((i)+"日");
zi.appendChild(ye);
fu.appendChild(zi);
}
}else{
;
}
ri=1;
}

//验证邮箱地址格式是否正确
function checkemail(tagname){
var a = document.getElementById(tagname);
var b = a.value;
var c = document.getElementById("emailend");
    var re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
    if(re.test(b)){
	 youxiang = 1;
	 a.setAttribute("class","userinfo");
	 c.innerHTML  =  "<img src='img/zhengque.png' id='zhengque'>"+"<p id='tishiwenben'>输入正确</p>";

    }else{
	 a.setAttribute("class","userinfow");
	 c.innerHTML ="<img src='img/cuowu.jpg' id='cuowu'>"+"<p id='cuowutishi'>E-mail格式错误！</p>"; 
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
     c.innerHTML  ="<img src='img/cuowu.jpg' id='cuowu'>"+"<p id='cuowutishi'>请输入有效的手机号码！</p>";
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
c.innerHTML ="<img src='img/cuowu.jpg' id='cuowu'>"+"<p id='cuowutishi'>密码必须为9位以上字符！</p>"; 
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


$("#logo,#dingbu,a.up,#chanpintupian,#bigbody,#denglujiemian").mouseenter(function(){
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

function qingkongneirong(){
	var a = document.getElementById("logininfomation0");
	a.value="";
}




function panduan(){
	var a = document.getElementById("logininfomation0");
	if(a.value==""){
		a.value="请输入用户名/邮箱/手机号";
	}else{
		;
	}
}

function checkedinfo(){
	var a = document.getElementById("logininfomation0");
	var b = document.getElementById("logininfomation1");
	var c = document.getElementById("rememberpass");
	c.value = c.checked;

	if(a.value==""||b.value==""){
		alert("请输入用户名及密码");
	}else {
		denglubiaodan.submit();
	}
	
}

function tijiao(){
	checkedinfo();
}









</script>

</html>
