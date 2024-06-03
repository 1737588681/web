<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
body, html {
	margin: 0;
	padding: 0;
	height: 100%;
	font-size: 30px;
}

.container {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.an {
	font-size: 25px;
}
</style>
<head>
<title>注册</title>
</head>
<body>
	<div class="container">
		<div align="center">用户注册</div>
		<form action="yz2.jsp" method="post">
			<table>
				<tr>
					<td>用户名:</td>
					<td><input type="text" id="name" name="username" /></td>
				</tr>
				<tr>
					<td>密码:</td>
					<td><input type="password" id="password" name="password" /></td>
				</tr>
				<tr>
					<td width="50%"><input type="submit" value="注册" name="zc"
						onclick="javascript:window.location='yz2.jsp'" class="an" /></td>
					<td width="50%"><input type="reset" name="cz" value="重置"
						class="an" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>