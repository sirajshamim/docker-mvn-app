<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Home Page</title>
<link href="images/logo.png" rel="icon">
</head>
</head>
<body>
<h1 align="center">Welcome to My App </h1>
<h1 align="center">This app is writen in java language and i am your Trainer Syed Siraj Shamim</h1>
<hr>
<br>
	<h1><h3> Server Side IP Address </h3><br>

<% 
String ip = "";
InetAddress inetAddress = InetAddress.getLocalHost();
ip = inetAddress.getHostAddress();
out.println("Server Host Name :: "+inetAddress.getHostName()); 
%>
<br>
<%out.println("Server IP Address :: "+ip);%>
</h1>
<br>
<h1><h3> Client Side IP Address </h3><br>
<%out.print( "Client IP Address :: " + request.getRemoteAddr() ); %><br>
<%out.print( "Client Name Host :: "+ request.getRemoteHost() );%><br></h1>
<hr>
<div style="text-align: center;">
	<span>
		<img src="images/logo.png" alt="" width="100">
	</span>
	<span style="font-weight: bold;">
		BazTechKnow Karachi, Pakistan
		Syed Siraj Shamim,
		+923008563209
		www.baztechknow.com
		<br>
		<a href="https://api.whatsapp.com/send/?phone=923008563209&text&type=phone_number&app_absent=0">WhatsApp to BazTechKnow </a>
	</span>
</div>
<hr>
	<p> Service : <a href="services/employee/getEmployeeDetails">Get Employee Details </p>
<hr>
<p align=center>BazTechKnow</p>
<p align=center><small>Copyrights 2024 by BazTechKnow </small></p>
</body>
</html>
