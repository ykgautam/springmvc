<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>help</title>
</head>
<body>
	<h1>this is help.jsp page</h1>
	<h2>hello my name is yash</h2>
	<%
	String name = (String) request.getAttribute("name");
	/* System.out.println(name); */
	%>
	<h2><%=name%></h2>
	<h3>Id is: ${ id }</h3>
	<hr>
	<h3>${ marks }</h3>
	<c:forEach var="item" items="${marks}">
		<%-- <h1>${ item }</h1> --%>

		<c:out value="${item }" />
	</c:forEach>

</body>
</html>