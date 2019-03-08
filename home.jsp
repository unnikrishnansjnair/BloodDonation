<%@ page language="java" contentType="text/html; charset=utf-8"
   %>
<!DOCTYPE html>
<html>

    <meta charset="utf-8">
<head>
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
		  	<form class="frm" action="search.jsp" method="POST">		  
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
		<div id="slog1" class="sloganBox">“I have nothing to offer but blood, toil, tears and sweat” – Winston Churchill</div>
		<div id="slog2" class="sloganBox">“To give blood you need neither extra strength nor extra food, and you will save a life.”</div>
	</div>
</body>
</html>