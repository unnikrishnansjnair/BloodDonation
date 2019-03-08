<%@ page language="java" import="java.sql.*,javax.servlet.http.HttpSession" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%

	String username=request.getParameter("username");
	String password=request.getParameter("password");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/blood_db","root","");
	Statement st=cn.createStatement();
	
	ResultSet rs=st.executeQuery("select count(*) from blood where username=" + "'" + username + "'" + " and password=" + "'" + password + "'");
	rs.next();
	
	if(rs.getInt(1) == 0)
	{
		Cookie c1=new Cookie("lerr","Invalid Username/ Password");
		response.addCookie(c1);
		response.sendRedirect("relogin.jsp");
	}
	else
	{
		HttpSession hs=request.getSession(true);
		//hs.putValue("username",username);
		session.setAttribute("session_name",username);
		response.sendRedirect("home.jsp");
	}

%>

<html>
<head>
<link rel="stylesheet " href="css/styles.css" type="text/css">
<meta charset="ISO-8859-1">
<title>Blood Donation Management</title>
<link rel="shortcut icon" href="images/logo.png" type="image/jpg" sizes="16x16">
</head>
<body background="images/BackgroundB.jpg">
	<header>
		<div class="topnav">
		  <a class="active" href="index.html">Home</a>
		  <a href="#about">About</a>
		  <a href="#contact">Contact</a>
		  <div class="reg_div">		   
		      <a href="logout.jsp" class="regbtn_a" >Logout</a>
		  </div>
		</div>
	</header>
</body>
</html>