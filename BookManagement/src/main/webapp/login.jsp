<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ page import="util.DBUtil"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/div.css" />
<script type="text/javascript" src="js/jquery-1.11.2.js"></script>
<script type="text/javascript">
String.prototype.trim=function(){
	return this.replace(/(^\s*)|(\s*$)/g, "");
}
</script>
<script type="text/javascript">
$(function(){

	$("#submit_img").click(function(){
			var username=$("input[name='username']").val();
			var password=$("input[name='password']").val();
			if(username.trim()==""){
					alert("請填用戶名");
					$("input[name='username']").focus();
					return false;
				}
			if(password.trim()==""){
				alert("請填密碼");
				$("input[name='password']").focus();
				return false;
			}

			if(password.trim().length<6){
				alert("密碼長度不得小於6");
				$("input[name='password']").focus();
				return false;
			}
			$("form[name='login']")[0].submit();
		});
	$("#reset_img").click(function(){
		
		$("form[name='login']")[0].reset();
	});

	$("#submit_img").mouseover(function(){
			$(this).attr("src","images/dlb.gif");
		});
	$("#submit_img").mouseout(function(){
		$(this).attr("src","images/dla.gif");
	});
	$("#submit_img").mousedown(function(){
		$(this).attr("src","images/dlc.gif");
	});
	$("#submit_img").mouseup(function(){
		$(this).attr("src","images/dla.gif");
	});

	$("#reset_img").mouseover(function(){
		$(this).attr("src","images/czc.gif");
	});
	$("#reset_img").mouseout(function(){
		$(this).attr("src","images/cza.gif");
	});
	$("#reset_img").mousedown(function(){
		$(this).attr("src","images/czc.gif");
	});
	$("#reset_img").mouseup(function(){
		$(this).attr("src","images/cza.gif");
	});
	
});
</script>
</head>
<body>
<div id="father">
<div id="loginform">
<form name="login" action="StudentServlet" method="post">
<table>
<tr>
<td>用戶名:</td>
<td><input type="text" name="username" /></td>
</tr>
<tr>
<td>密碼:</td>
<td><input type="text" name="password" /></td>
</tr>
<tr>
<td colspan="2">
<input type="hidden" name="action" value="login" />
<img id="submit_img" src="images/dla.gif" style="cursor: pointer;" >
<img id="reset_img" src="images/cza.gif" style="cursor: pointer;">
</td>
</tr>
<%
String message=(String)request.getAttribute("message");
if(message!=null){
	%>
<tr>
<td colspan="2">
<font color="red"><%=message%></font>
</td>
</tr>
	<%
}
%>
</table>
</form>

</div>
<div id="message">
提示:
<ul>
<li>登入帳號是學生證號碼</li>
<li>新生的預設密碼是:
<ol>
<li>學生證號</li>
<li>借書證號</li>
</ol>
</li>
<li>登入後可以修改密碼</li>
<li>忘記密碼可手動取回</li>
</ul>
</div>
</div>
</body>
</html>