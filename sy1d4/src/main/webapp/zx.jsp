<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>注销</title>
</head>
<body>
<%
session.invalidate();
out.print("<script>alert('注销成功'); window.location='4.1.jsp' </script>");
%>
</body>
</html>