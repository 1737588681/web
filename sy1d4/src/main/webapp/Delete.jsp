<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>购物车</title>
</head>
<jsp:useBean id="Cart" scope="session" class="Cart.cart" />
<jsp:setProperty name="Cart" property="*" />
<body>
	<div align="center">
		<%
String flowerName=request.getParameter("FName");
Cart.delete(flowerName);
response.sendRedirect("ShowCartInf.jsp");
%>
	</div>
</body>
</html>