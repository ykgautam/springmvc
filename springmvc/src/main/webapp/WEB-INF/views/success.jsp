<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success</title>
</head>
<body>
	
	<h1> ${successHeadline} </h1>
	name: ${user.username}
	<br> email: ${user.email}
	<br> password: ${user.password}

	<%-- <h1>form filled successfully</h1>
	<h2>name is ${name}</h2>
	<h2>email is ${ email }</h2>
	<h2>password is ${ password }</h2>
 --%>
</body>
</html>