<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<title>身份验证</title>
</head>
<body>
	<%
try{
String path=getServletContext().getRealPath(".");
FileReader frinput=new FileReader(path+File.separator+"tt.txt");
BufferedReader brinput=new BufferedReader(frinput);
String yh="";
String temp="";
while((temp=brinput.readLine())!=null){
	yh+=temp+"<br>";
}
String yhs[]=yh.split("<br>");
String username=request.getParameter("username");
String password=request.getParameter("password");
boolean flag=false;
for(int i=0;i<yhs.length;i++){
	String cs[]=yhs[i].split(",");
if(username.equals(cs[0])&&password.equals(cs[1]))
{
	session.setAttribute("username", cs[0]);
	out.print("<script>alert('登录成功'); window.location='d4.html' </script>");
	flag=true;
}
}
if(flag==false){
	out.print("<script>alert('用户名或密码错误'); window.location='dl.html' </script>");
}
brinput.close();
frinput.close();
}
catch(FileNotFoundException fnfe)
{
	out.print(fnfe);
}
catch(IOException ioe)
{
	out.println(ioe);
}
%>
</body>
</html>