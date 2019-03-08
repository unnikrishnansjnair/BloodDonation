<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
		  <div class="login-container">
			  <form action="register.jsp" method="POST">
			      <button type="submit">Register</button>
			  </form>
		  </div>
		</div>
	</header>
	
	<div class="slogan">
	<img src="images/blood.png" class="img" width="40px" height="50px">	
	<div id="tit" class="tit"><h1><!--  <img src="images/blood.png" class="logo" width="40px" height="40px">--> Blood Donation</h1></div>
		<div id="bslog" class="slg">Save life</div>
	</div>
	
	<form name="f1" method="POST" action="login.jsp">
				<br>
				<div class="tab-div">
					<div class="log-div">Login Form</div>
					<span id='message' style="color:red">
						<% 
							Cookie c1[]=request.getCookies();
							String errmsg=" ";
							if(c1!=null)
							{
								for(int i=0;i<c1.length;i++)
								{
									if(c1[i].getName().equals("lerr"))
										errmsg=c1[i].getValue();
									
								}
							}
							out.println(errmsg); %>
					</span>
					<div class="fiel">
						<div class="r-labl" >UserName <input type="text" name="username" placeholder="Enter your UserName" onkeyup='check();' required></div>
					</div>
					<div class="fiel">
						<div class="r-labl" >Password <input type="password" id="password" name="password" placeholder="Enter a Password" onkeyup='check();' required></div>
					</div>
					<%
			
						/* Cookie c1[]=request.getCookies();
						String errmsg=" ";
						if(c1!=null)
						{
							for(int i=0;i<c1.length;i++)
							{
								if(c1[i].getName().equals("lerr"))
									errmsg=c1[i].getValue();
								
							}
						} */
						
						
						//out.println("<tr>");
						//out.println("<td color='red' colspan='2'>&nbsp;"+ errmsg + "</td>");
						//out.println("</tr>");
					%>
					<script>
						
						
						var check = function() {
							  if (document.getElementById('password').value == "" ||  document.getElementById('username').value == "") {
							    document.getElementById('message').style.color = 'red';
							    document.getElementById('message').innerHTML = '';
							  } else {
							    document.getElementById('message').style.color = 'green';
							    document.getElementById('message').innerHTML = '';
							  }
							}
					</script>
					
					<input class="login-btninp" type="submit" value="Login">
					
					
				
				
				</div>
			</form>
</body>
</html>