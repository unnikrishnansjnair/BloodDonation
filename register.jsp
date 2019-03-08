<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet " href="css/styles.css" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
		  	<form class="frm" action="search.jsp">
		      <input type="text" id="srch" placeholder="Search Blood Group(ex.O+ve)" name="search" required>
		      <button type="submit" ><i class="fa fa-search"></i></button>
		    </form>
		    <form class="frm" action="login.jsp" method="POST">
		      <input type="text" placeholder="Username" name="username" required>
		      <input type="password" placeholder="Password" name="password" required>
		      <button type="submit">login</button>
		    </form>
		  </div>
		</div>
	</header>
	
	<div class="slogan">
	<img src="images/blood.png" class="img" width="40px" height="50px">	
	<div id="tit" class="tit"><h1><!--  <img src="images/blood.png" class="logo" width="40px" height="40px">--> Blood Donation</h1></div>
		<div id="bslog" class="slg">Save life</div>
		</div>
	
	<form name="f1" method="POST" action="reg1.jsp">
				<br>
				<div class="tab-div">
					<div class="log-div">Registration Form</div>
					<div class="fiel">
						<div class="r-labl" >First Name <input type="text" name="firstname" placeholder="Enter your First Name" required></div>
					</div>
					<div class="fiel">
						<div class="r-labl" >Last Name <input type="text" name="lastname" placeholder="Enter your Last Name" required></div>
					</div>
					<div class="fiel">
						<div class="r-labl" >UserName <input type="text" name="username" placeholder="Enter your UserName" required></div>
					</div>
					<div class="fiel">
						<div class="r-labl" >Password <input type="password" id="password" name="password" placeholder="Enter a Password" onkeyup='check();' required></div>
					</div>
					<div class="fiel">
						<div class="r-labl" >Re-type Password <input type="password" id="repassword" name="repassword" placeholder="Re Enter the Password" onkeyup='check();' required>
						
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
						</div>
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
						function validate() {
							var x= document.getElementById("password");
							    var y= document.getElementById("repassword");
							if(x.value==y.value) return;
								else alert("password not same");
						}
						
						var check = function() {
							  if (document.getElementById('password').value ==
							    document.getElementById('repassword').value) {
							    document.getElementById('message').style.color = 'green';
							    document.getElementById('message').innerHTML = ' ';
							  } else {
							    document.getElementById('message').style.color = 'red';
							    document.getElementById('message').innerHTML = 'Password not matching';
							  }
							}
					</script>
					<div class="fiel">
						<div class="r-labl" >Age <input type="number" name="age" placeholder="Enter your Age" required></div>
					</div>
					<div class="fiel">
						<div class="r-labl" >Gender <input type="radio" name="gender" value="Male" required>Male
						<input type="radio" name="gender" value="female" required>Female</div>
					</div>
					<div class="fiel">
						<div class="r-labl" >Location <input type="text" name="location" placeholder="Enter your Location" required></div>
					</div>
					
					<div class="fiel">
						<div class="r-labl" >Blood Group 
						<select name="bloodgroup" required>
							<option class="opt" color="black" value=O+ve>O+ve</option>
							<option class="opt" value=A+ve>A+ve</option>
							<option class="opt" value=B+ve>B+ve</option>
							<option class="opt" value=AB+ve>AB+ve</option>
							<option class="opt" value=O-ve>O-ve</option>
							<option class="opt" value=A-ve>A-ve</option>
							<option class="opt" value=B-ve>B-ve</option>
							<option class="opt" value=AB-ve>AB-ve</option>
						</select> </div>
					</div>
					<div class="fiel">
						<div class="r-labl" >Email <input type="email" name="email" placeholder="Enter your Valid email" required></div>
					</div>					
					<div class="fiel">
						<div class="r-labl" >Contact <input type="number" name="contact" placeholder="Enter your Contact" required></div>
					</div>
					<input class="reg-btninp" type="submit" value="Register">
					<!-- <button type="submit">Register</button> -->
					
					
				
				<!--  <table class="reg-table" width='40%' >
				
					<tr>
						<td class="reg-lbl">Username</td>
						<td><input type="text" name="t1" placeholder="Enter User Name"></td>
					</tr>
					
					<tr>
						<td class="reg-lbl">Password</td>
						<td><input type="text" name="t2" placeholder="Enter Password "></td>
					</tr>
				
					<tr>
						<td class="reg-lbl">Name</td>
						<td><input type="text" name="t3" placeholder="Enter Your Name"></td>
					</tr>
									
					<tr>
						<td class="reg-lbl">Age</td>
						<td><input type="number" name="t4" placeholder="Enter Your Age "></td>
					</tr>
				
					<tr>
						<td class="reg-lbl">Gender</td>
						<td><input type="radio" name="gender" value="Male">Male
						<input type="radio" name="gender" value="female">Female</td>
					</tr>
				
					<tr>
						<td class="reg-lbl">Location</td>
						<td><input type="text" name="t6" placeholder="Enter Location"></td>
					</tr>
				
					<tr>
						<td class="reg-lbl">Blood Group</td>
						<td><input type="text" name="t7" placeholder="Enter Your Blood Group"></td>
					</tr>
				
					<tr>
						<td class="reg-lbl">Contact</td>
						<td><input type="number" name="t8" placeholder="Enter Your Contact Number"></td>
					</tr>
					
					<tr>
						<td></td>
						<td class="reg-btn"><input class="reg-btninp" type="submit" value="Register"></td>
					</tr>
					
				</table>
				<br>
				
				
				<a href='login.jsp'>Login</a>-->
				</div>
			</form>
</body>
</html>