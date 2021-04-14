<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>success</title>
</head>
<body>
	<h3>name: ${student.name}</h3>
	<h3>id: ${student.id}</h3>
	<h3>date: ${student.date}</h3>
	<h3>courses: ${student.courses}</h3>
	<h3>gender:${student.gender}</h3>
	<h3>type:${student.type}</h3>
	<h3>address: ${student.address}</h3>
	<h3>street: ${student.address.street}</h3>
	<h3>city: ${student.address.city}</h3>
	 
</body>
</html>