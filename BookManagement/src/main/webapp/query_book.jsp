<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<jsp:useBean id="pagebean" class="util.PageBean" scope="session"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.11.2.js"></script>
<script type="text/javascript">
$(function(){

	$("#img_submit").click(function(){
				
		});
	$("#img_reset").click(function(){
		$("form[name='search_jd']")[0].reset();
	});

	$("#img_submit_f").click(function(){
		
	});
	$("#img_reset_f").click(function(){
		$("form[name='search_fz']")[0].reset();
	});
	
});
</script>
</head>
<body>
<div id="father">
<div id="condition">
搜索方式:
<input type="radio" name="search_mode" checked="checked" />簡單搜尋&nbsp;&nbsp;
<input type="radio" name="search_mode" checked="checked" />複雜搜尋&nbsp;&nbsp;
</div>
<div id="search">
<form name="search_jd" action="StudentServlet?action=simple" method="post">
<table id="simple" border="0">
<tr>
<td align="right">請輸入關鍵字:</td>
<td><input type="text" name="key" /></td>
</tr>
<tr>
<td  align="right">選擇查詢條件:</td>
<td>
<select name="condition">
<option value="BookName" selected="selected">書名</option>
<option value="Author">作者</option>
<option value="Publish">出版社</option>
<option value="BookIsbn">ISBN</option>
</select>
</td>
</tr>
<tr>
<td colspan="2">
<img id="img_submit" src="images/ssa.gif" style="cursor: pointer;" />
<img id="img_reset" src="images/qka.gif" style="cursor: pointer;" />
</td>
</tr>
</table>
</form>
<form name="search_fz" action="StudentServlet?action=complex" method="post">
<table id="complex" border="0" style="display: none;">
<tr>
<td align="right">書名</td>
<td><input type="text" name="BookName" /></td>
</tr>
<tr>
<td align="right">作者</td>
<td><input type="text" name="Author" /></td>
</tr>
<tr>
<td align="right">出版社</td>
<td><input type="text" name="Publish" /></td>
</tr>
<tr>
<td colspan="2">
<img id="img_submit_f" src="images/ssa.gif" style="cursor: pointer;" />
<img id="img_reset_f" src="images/qka.gif" style="cursor: pointer;" />
</td>
</tr>
</table>
</form>
</div>
<div id="message">

</div>
</div>
</body>
</html>