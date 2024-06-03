<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<title>注册验证</title>
</head>
<body>
	<%
boolean flag=false;
String username=request.getParameter("username");
String password=request.getParameter("password");
String yh="";
String yhs[]=null;
try{

String path=getServletContext().getRealPath(".");
FileReader frinput=new FileReader(path+File.separator+"tt.txt");
BufferedReader brinput=new BufferedReader(frinput);
String temp="";
while((temp=brinput.readLine())!=null){
	yh+=temp+"<br>";
}
yhs=yh.split("<br>");
for(int i=0;i<yhs.length;i++){
	String cs[]=yhs[i].split(",");
if(username.equals(cs[0]))
{   
	flag=true;
}
}
brinput.close();
frinput.close();
}catch(FileNotFoundException fnfe)
{
out.print(fnfe);
}
catch(IOException ioe)
{
out.println(ioe);
}   
if(flag==false){
	try{
	String path=getServletContext().getRealPath(".")+File.separator+"tt.txt";
	BufferedWriter bo=new BufferedWriter(new FileWriter(path));
	for(int i=0;i<yhs.length;i++)
	{   String cs[]=yhs[i].split(",");
		bo.write(cs[0]+","+cs[1]);
		bo.write("<br>");
	}
    bo.write(username+","+password+"<br>");
    bo.close();
	}catch(Exception e){
		out.println(e);
	}
	out.print("<script>alert('注册成功'); window.location='dl.html' </script>");
}
else{
	out.print("<script>alert('用户名被使用'); window.location='zc.jsp' </script>");
	}
%>
</body>
</html>