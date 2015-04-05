<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
<style type="text/css">
body{
	
}
</style>
</head>
<body>
<table>
<tr>
<td width="40px"><img src="images/ico.png" width="40px" height="40px" /></td>
<td>
<span>
<font color="black">大學圖書管理系統</font>
</span>
</td>
</tr>
<tr>
<td colspan="2">
<hr size="1" width="100%" />
</td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr height="150px">
<td width="10%"><a id="button1" href="login.jsp" target="bottomFrame">登錄系統</a></td>
<td width="10%"><a id="button2" href="StudentServlet?action=stuInfo" target="bottomFrame">讀者訊息</a></td>
<td width="10%"><a id="button3" href="StudentServlet?action=cb" target="bottomFrame">書刊借閱</a></td>
<td width="10%"><a id="button4" href="StudentServlet?action=inform" target="bottomFrame">預約通知</a></td>
<td width="10%"><a id="button5" href="query_book.jsp" target="bottomFrame">書刊檢索</a></td>
<td></td>
</tr>
</table>
</body>
</html>