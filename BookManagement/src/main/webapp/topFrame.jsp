<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/globalstyle.css" />
<link rel="stylesheet" type="text/css" href="css/navigation.css" />
<script type="text/javascript" src="js/jquery-1.11.2.js"></script>
<script type="text/javascript">
$(function(){

	$("a").mouseover(function(){
			$(this).addClass("mbuttonhover").removeClass("mbutton");
		});
	$("a").mouseout(function(){
		$(this).addClass("mbutton").removeClass("mbuttonhover");
	});
	
});
</script>
<style type="text/css">
body{
	background-color: #FEFFE1;
}
table#mytable{
	background-color: #006000;
}
</style>
</head>
<body>
<table border="0" width="100%">
<tr>
<td width="40px"><img src="images/ico.png" width="40px" height="40px" /></td>
<td>
<span>
<font color="black" size="6">�j�ǹϮѺ޲z�t��</font>
</span>
</td>
</tr>
<tr>
<td colspan="2">
<hr size="1" width="100%" />
</td>
</tr>
</table>
<table id="mytable" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr height="150px">
<td width="10%"><a id="button1" href="login.jsp" target="bottomFrame">�n���t��</a></td>
<td width="10%"><a id="button2" href="StudentServlet?action=stuInfo" target="bottomFrame">Ū�̰T��</a></td>
<td width="10%"><a id="button3" href="StudentServlet?action=cb" target="bottomFrame">�ѥZ�ɾ\</a></td>
<td width="10%"><a id="button4" href="StudentServlet?action=inform" target="bottomFrame">�w���q��</a></td>
<td width="10%"><a id="button5" href="query_book.jsp" target="bottomFrame">�ѥZ�˯�</a></td>
<td></td>
</tr>
</table>
</body>
</html>