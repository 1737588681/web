<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>完成购物</title>
</head>
<jsp:useBean id="Cart" scope="session" class="Cart.cart" />
<jsp:setProperty name="Cart" property="*" />
<body>
<%
Cart.deleteall();
response.sendRedirect("bottom.html");
%>
</body>
</html>