<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Fundamentals</title>
</head>
<body>
	<h1>Registration Form</h1>
	<form name="registration" method="post" action="registration_success.jsp">  
		<input type="text" name="lastname" placeholder="Lastname"/><br/>  
		<input type="text" name="firstname" placeholder="Firstname"/><br/> 
		<input type="email" name="email" placeholder="Email Address..." /><br/>  
		<input type="text" name="country" placeholder="Enter Country"/><br/> 
		<input type="text" name="sec-question" placeholder="Enter Security Question" /><br/> 
		<input type="text" name="sec-answer" placeholder="Enter Your Answer..."/><br/> 
		<input type="text" name="username" placeholder="Username" /><br/> 
		<input type="password" name="upass" placeholder="Password..."/><br/>  
		<input type="submit" value="register"/>  
	</form> 
</body>

</html>