<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>BLOOD BANK</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="css/style.css">
</head>
<body>
<%@include file="nav.jsp" %>
<%
	        if ("POST".equalsIgnoreCase(request.getMethod())) {
	        	String email = request.getParameter("email");
	            String pass = request.getParameter("pass");
	            
	            MyDb db = new MyDb();
	           Connection con = db.getCon();
	           Statement stmt = con.createStatement();
	           stmt.executeUpdate("insert into users(email,password,type)values('"+email+"','"+pass+"','"+"user"+"') ");
	            response.sendRedirect("registrationsuccess.jsp");
	        }
%>
  <div class="container" style="padding-top:50px">
  	   <div class="row" style="background:indianred">
	        <div class="col-md-6" style="text-align:center">
	        <h6>Dear donor, create your account</h6><br>
			<form action="register.jsp" method="post">
			    <input type="email" name="email" placeholder="email"/><br><br>
			    <input type="password"  name="pass" placeholder="password"/><br><br>
			    <input type="submit" value="Register"/><br><br>    	 
			</form>
	        </div>
 </div>
 </div>
 <footer>
 developed by 
 </footer>
</body>
</html>