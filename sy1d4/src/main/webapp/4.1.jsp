<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
   body, html {
    margin: 0;
    padding: 0;
    height: 100%;
  }
  .fullscreen-bg {
    background: url('image/c.jpg') no-repeat center center fixed;
    background-size: cover;
    height: 100%;
  }
.container {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
.an{
font-size:35px;
}
</style>
    <head>
        <title>花店名</title>
    </head>
    <body>
        <div class="fullscreen-bg">
        <div class="container">
           <font size="15" color="blue">ccc花店</font>
         </div>
         <%
          if(session.getAttribute("username")==" "||session.getAttribute("username")==null)
          {
         %>
         <div align="right">
           <input type="button" name="dl" value="登录用户" onClick="window.open('dl.html','登录')" class="an">
          </div>
         <%
          }
          else{
          String username=(String)session.getAttribute("username");
          out.println("<div align='right'><font size='10' color='blue'>"+username+"</div>");
          out.print("<div align='right'><a href='zx.jsp' align='right'><font size='10' color='blue'>注销</a></div>");
          }
         %>
        </div>
    </body>
</html>