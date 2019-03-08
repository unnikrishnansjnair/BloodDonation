<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
	String firstname=request.getParameter("firstname");
	String lastname=request.getParameter("lastname");
	String fullname=firstname+" "+lastname;
	//out.println(fullname);
	boolean chk=true;
	String password=request.getParameter("password");
	String repassword=request.getParameter("repassword");
	
	if(password.equals(repassword)){
		Cookie c1=new Cookie("lerr"," ");
		response.addCookie(c1);
		chk=true;
	}
	else{
		Cookie c1=new Cookie("lerr","Password not matching");
		response.addCookie(c1);
		chk=false;
		//response.sendRedirect("register.jsp");
	}
	
	String username=request.getParameter("username");
	int age=Integer.parseInt(request.getParameter("age"));
	String gender=request.getParameter("gender");
	String location=request.getParameter("location");
	String bgroup=request.getParameter("bloodgroup");
	String email=request.getParameter("email");
	double contact=Double.parseDouble((request.getParameter("contact")));
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/blood_db","root","");
	Statement st=cn.createStatement();
	
	ResultSet rs=st.executeQuery("select count(*) from blood where username=" + "'" + username + "'");
	rs.next();
	
	if(rs.getInt(1) == 0 && chk==true)
	{
		String query="insert into blood(firstname, lastname, fullname, username, password, age, gender, location, bloodgroup, email, contact) values(?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement preparedStmt = cn.prepareStatement(query);
		preparedStmt.setString (1, firstname);
		preparedStmt.setString (2, lastname);
		preparedStmt.setString (3, fullname);
		preparedStmt.setString (4, username);
		preparedStmt.setString (5, password);
		preparedStmt.setInt (6, age);
		preparedStmt.setString (7, gender);
		preparedStmt.setString (8, location);
		preparedStmt.setString (9, bgroup);
		preparedStmt.setString (10, email);
		preparedStmt.setDouble (11, contact);
		preparedStmt.execute();
		response.sendRedirect("login.jsp");
	}
	else
	{
		response.sendRedirect("register.jsp");
	}
	
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>