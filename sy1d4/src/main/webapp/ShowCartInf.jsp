<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>购物车</title>
</head>
<jsp:useBean id="Cart" scope="session" class="Cart.cart" />
<jsp:setProperty name="Cart" property="*" />
<script language="JavaScript">
            function zs()
            {   
            	if(confirm('确认购买完成')==true){
            	alert('谢谢惠顾');
            	window.location="wc.jsp";
            }
            }
</script>
<%
  int nflowerNumber=0;
  if(request.getParameter("mgNumber")!=null&&request.getParameter("mgNumber")!=""&&request.getParameter("mgNumber")!="0")
  {
	  String mgNumber=request.getParameter("mgNumber");
	  String mg=request.getParameter("mg");
	  nflowerNumber=Integer.valueOf(mgNumber);
	  Cart.add(mg,nflowerNumber);
  }
  if(request.getParameter("bhNumber")!=null&&request.getParameter("bhNumber")!=""&&request.getParameter("mgNumber")!="0")
  {
	  String bhNumber=request.getParameter("bhNumber");
	  String bh=request.getParameter("bh");
	  nflowerNumber=Integer.valueOf(bhNumber);
	  Cart.add(bh,nflowerNumber);
  }
  if(request.getParameter("cwNumber")!=null&&request.getParameter("cwNumber")!=""&&request.getParameter("mgNumber")!="0")
  {
	  String cwNumber=request.getParameter("cwNumber");
	  String cw=request.getParameter("cw");
	  nflowerNumber=Integer.valueOf(cwNumber);
	  Cart.add(cw,nflowerNumber);
  }
  if(request.getParameter("knxNumber")!=null&&request.getParameter("knxNumber")!=""&&request.getParameter("mgNumber")!="0")
  {
	  String knxNumber=request.getParameter("knxNumber");
	  String knx=request.getParameter("knx");
	  nflowerNumber=Integer.valueOf(knxNumber);
	  Cart.add(knx,nflowerNumber);
  } 
  Hashtable<String,Integer> h=Cart.ShowCartInf();
  Enumeration e=h.keys();
  float sum=Cart.getSum();
%>
<body>
	<div align="center">
		<p>您所选购的书籍有：</p>
		<table width="100%" border="0">
			<tr>
				<td width="50%" height="25" align="right">花名&nbsp;&nbsp;</td>
				<td width="50%" align="left" colspan="2">&nbsp;数量(束)</td>
			</tr>
			<%
   while(e.hasMoreElements())
   {
	   String name=e.nextElement().toString();
	   int number=((Integer)h.get(name)).intValue();
%>
			<tr>
				<td width="50%" height="25" align="right"><font color="#0000FF">
						<% 
  if(name.equals("mg")){ 
	  out.println("玫瑰花");
  }
  else if(name.equals("bh")){
	  out.println("百合花");
  }
  else if(name.equals("cw")){
	  out.println("蔷薇花");
  }
  else if(name.equals("knx")){
	  out.println("康乃馨");
  }
  else{}
  %>
				</font></td>
				<td width="20%" align="left">&nbsp;<font color="#FF0000">
						<% out.println(number);%>
				</font>
				</td>
				<td width="30%" align="left">&nbsp; <input type="button"
					name="FName" value="删除"
					onClick="javascript:window.location='Delete.jsp?FName=<%=name%>'">
				</td>
			</tr>
			<%
    }
%>
			<tr>
				<td width="50%" height="25" align="right"><font color="#0000FF">总价格：</font>
				</td>
				<td width="50%" height="25" align="left" colspan="2"><font
					color="#0000FF">&nbsp;<% out.println(sum);%> &nbsp;元
				</font></td>
			</tr>
			<tr>
				<td colspan="3">&nbsp;</td>
			</tr>
			<tr>
				<td width="50%" height="25" align="right"><input type="button"
					name="continue" value="继续购物"
					onClick="javascript:window.location='bottom.html'"></td>
				<td width="50%" height="25" align="left" colspan="2">
					&nbsp;&nbsp;<input type="button" name="finish" value="完成"
					onclick="zs()">
				</td>
			</tr>
		</table>
	</div>
</body>
</html>