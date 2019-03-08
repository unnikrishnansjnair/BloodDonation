<%@ page language="java" import="java.sql.*,javax.servlet.http.HttpSession" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<link rel="stylesheet " href="css/styles.css" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="ISO-8859-1">
<title>Blood Donation Management</title>
<link rel="shortcut icon" href="images/logo.png" type="image/jpg" sizes="16x16">
</head>

<%
	
		HttpSession hs=request.getSession(true);
		//String username1=(String)hs.getValue("username");
		String username=(String)session.getAttribute("session_name");
		if(username==null || username.length()==0)
			response.sendRedirect("logerr.jsp");
		
	%>

<body background="images/BackgroundB.jpg">
	<header>
		<div class="topnav">
		  <a class="active" href="home.jsp">Home</a>
		  <a href="#about">About</a>
		  <a href="#contact">Contact</a>
		  <div class="login-container">
		  <form class="frm" action="search.jsp">
		      <input type="text" id="srch" placeholder="Search Blood Group(ex.O+ve)" name="search" required>
		      <button type="submit" ><i class="fa fa-search"></i></button>
		    </form>
		    <form class="frm" action="logout.jsp" method="POST">
		      <span class="user-span">Hai <%out.println(username); %></span>
		      <button type="submit">logout</button>
		    </form>
		  </div>
		</div>
	</header>
	
	<div class="slogan">
	<img src="images/blood.png" class="img" width="40px" height="50px">	
	<div id="tit" class="tit"><h1><!--  <img src="images/blood.png" class="logo" width="40px" height="40px">--> Blood Donation</h1></div>
		<div id="bslog" class="slg">Save life</div>
	</div>
	
	<h2 class="srch-h2" id="src-h2">Donar Details</h2>
	
		<%
		
		String id=request.getParameter("id");
	
			Class.forName("com.mysql.jdbc.Driver");
			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/blood_db","root","");
			Statement st=cn.createStatement();
			ResultSet rs=st.executeQuery("select * from blood where id="+id);

			rs.next();
		%>
		
		<table class="w3-table-all w3-hoverable">
		
		<thead>
	      <tr class="w3-light-green">
	        <th>Name</th>
	        <th>Age</th>
	        <th>Gender</th>
	        <th>Blood Group</th>
	        <th>Location</th>
	        <th>Contact</th>
	      </tr>
	    </thead>
		
		
			<%
				String cname="w3-hover-black";
				
					out.println("<tr class='"+cname+"'>");
					out.println("<td>"+rs.getString(4)+"</td>");
					out.println("<td>"+rs.getString(7)+"</td>");
					out.println("<td>"+rs.getString(8)+"</td>");
					out.println("<td>"+rs.getString(10)+"</td>");
					out.println("<td>"+rs.getString(9)+"</td>");
					out.println("<td>"+rs.getString(12)+"</td>");
					out.println("</tr>");
				
			
			%>
		
	</table>
</body>
</html>