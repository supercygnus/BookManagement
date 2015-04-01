<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ page import="org.springframework.web.context.*,org.springframework.web.context.support.*"%>
<%@ page import="util.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>
<%

WebApplicationContext wac
= WebApplicationContextUtils.getWebApplicationContext(this.getServletContext());
						
DBUtil dbu = (DBUtil)wac.getBean("DBUtil");						

List list=dbu.query();



%>
</body>
</html>