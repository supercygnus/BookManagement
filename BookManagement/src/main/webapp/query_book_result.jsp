<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ page import="java.util.*"%>
<jsp:useBean id="pagebean" class="util.PageBean" scope="session"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.11.2.js"></script>
<script type="text/javascript">
$(function(){

$("img[name='sub_img']").mouseover(function(){
	$(this).attr("src","images/yyb.gif");
});

$("img[name='sub_img']").mouseout(function(){
	$(this).attr("src","images/yya.gif");
});

$("img[name='sub_img']").mousedown(function(){
	$(this).attr("src","images/yyc.gif");
});

$("img[name='sub_img']").mouseup(function(){
	$(this).attr("src","images/yya.gif");
});

$("img[name='sub_img']").click(function(){
	
	if(confirm("確定要預約此本書嗎??")==true){
			$(this).parent()[0].submit();
		}
});

});
</script>
</head>
<body>
<% 

Vector<Vector<String>> list=(Vector<Vector<String>>)request.getAttribute("v");
String stuno=(String)session.getAttribute("stuNo");
String url="query_book_result.jsp";

%>
<table border="0" cellpadding="0" cellspacing="0" align="center" width="90%">
<tr>
<th>編號</th>
<th>名稱</th>
<th>作者</th>
<th>出版社</th>
<th>ISBN</th>
<th>購入時間</th>
<th>價格</th>
<th>狀態</th>
<%
if(stuno!=null){
%>
<th>預約</th>	
<% 
}
%>
</tr>
<%
for(int i=0;i<list.size();i++){
	Vector<String> vtemp=list.get(i);
%>
<tr>
<td><%=vtemp.get(0)%></td>
<td><%=vtemp.get(1)%></td>
<td><%=vtemp.get(2)%></td>
<td><%=vtemp.get(3)%></td>
<td><%=vtemp.get(4)%></td>
<td><%=vtemp.get(5)%></td>
<td><%=vtemp.get(6)%></td>
<%
int condition=Integer.parseInt(vtemp.get(7));
switch(condition){
	case 0:
		%>
		<td>在館</td>
		<%
		break;
	case 1:
		%>
		<td>借出</td>
		<%
		break;
	case 2:
		%>
		<td>遺失</td>
		<%
		break;
}
if(stuno!=null){
	if(condition==1){
		%>
		<td align="center">
			<form name="" action="StudentServlet" method="post" >
				<input type="hidden" name="action" value="order" />
				<input type="hidden" name="bookNo" value="<%=vtemp.get(0)%>" />
				<img name="sub_img" id="subimg<%=i%>" src="images/yya.gif" style="cursor: pointer;">
			</form>
		</td>
		<% 
	}
	else{
		%>
		<td>---</td>
	<%	
	}
}
%>
</tr>
<%
}
%>
</table>
</body>
</html>