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
	<form name="registration" method="post" action="">  
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
<%@ page import="java.sql.*" %>

<%
	String lastname = request.getParameter("lastname");
	String firstname = request.getParameter("firstname");
	String email = request.getParameter("email");
	String country = request.getParameter("country");
	String secQuestion = request.getParameter("sec-question");
	String secAnswer = request.getParameter("sec-answer");
	String username = request.getParameter("username");
	String password = request.getParameter("upass");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jspactivity", "root", "");
		PreparedStatement st=con.prepareStatement("insert into user(lastname, firstname, email, country, secQuestion, secAnswer, username, password) values(?, ?, ?, ?, ?, ?, ?, ?)");
		st.setString(1, lastname);
		st.setString(2, firstname);
		st.setString(3, email);
		st.setString(4, country);
		st.setString(5, secQuestion);
		st.setString(6, secAnswer);
		st.setString(7, username);
		st.setString(8, password);
		
		int x = st.executeUpdate();
		
		/* if (x > 0){
			out.println("Registration done successfully...");
		} else {
			out.println("Registration failed");
		} */
	}

	catch(Exception e){
		out.println(e);
	}

%>

</html>