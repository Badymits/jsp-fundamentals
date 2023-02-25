<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>User Account Request Form</h1>
	<form name="registration" method="post" action="">  
		<input type="email" name="email" placeholder="Email Address..." /><br/>  
		<input type="text" name="sec-question" placeholder="Enter Security Question..." /><br/> 
		<input type="text" name="sec-answer" placeholder="Enter Your Answer..."/><br/> 
		<input type="submit" value="Send Request"/>  
	</form> 
</body>
		
		
</html>