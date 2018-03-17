<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <frameset rows="85,*,40" frameborder="NO" noresize Borders="NO" framespacing="0"> 
 <frame name="topFrame" frameborder="NO" scrolling="NO" noresize Borders="NO" 

src="top.jsp"  marginwidth="value" marginheight="value" >
 <frame name="mainFrame" noresize Borders="NO" src="index-ec.jsp" marginwidth="value" 

marginheight="value" >
 <frame src="footer.jsp" name="top1Frame" frameborder="NO" scrolling="NO" noresize  

marginwidth="0" marginheight="0" Borders="NO" >
</frameset>
<noframes><body bgcolor="#FFFFFF">

</body></noframes>
</html>
