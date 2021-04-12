<%@page import="javax.swing.plaf.metal.MetalBorders.Flush3DBorder"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>home page</title>
</head>
<body>
	<h1>this is index page</h1>
	<h2>called by home controller</h2>
	<h2>url /home</h2>
	<%
	String name = (String) request.getAttribute("name");
	%>
	<h3>
		my name is
		<%=name%></h3>

	<%
	List<String> friends = (List<String>) request.getAttribute("f");
	for (String s : friends) {
		%>
		
		<h3><%=s %></h3>
		<%
	}
	%>

</body>
</html>