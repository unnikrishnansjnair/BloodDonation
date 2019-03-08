<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
<meta charset="utf-8">
<link rel="stylesheet " href="css/styles.css" type="text/css">
</head>
<%

	Cookie c1=new Cookie("lerr","Please Login First");
	response.addCookie(c1);
	response.sendRedirect("relogin.jsp");

%>

<body>

</body>
</html>