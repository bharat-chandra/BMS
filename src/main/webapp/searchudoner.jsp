<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>search HOSPITAL</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="css/style.css">
</head>
<body>
<%@include file="nav.jsp" %>
<div class="container" style="padding-top:50px">
		<div class="row" style="background:indianred">
		<%
        	boolean data = false;
            String bld = request.getParameter("bld");
            String loc = request.getParameter("loc");        
           MyDb db = new MyDb();
           Connection con =db.getCon();
           Statement stmt = con.createStatement();
           ResultSet rs = stmt.executeQuery("select * from uregister where bld = '"+bld+"' and location ='"+loc+"' "); 
           %>
           <div class="row" style="padding-top:20px">
				<table border=1>
					<tr>
						<th>Name</th>
						<th>Gender</th>
						<th>Age</th>
						<th>Blood group</th>
						<th>address</th>
						<th>Email</th>
						<th>Phone no</th>
					</tr>
					<%
			           while(rs.next()){
			        	   data=true;
				           String name = rs.getString("name");
				           String bldg = rs.getString("bld");
				           String gender = rs.getString("gender");
				           String age = rs.getString("age");
				           String email = rs.getString("email");
				           String location = rs.getString("location");
				           String phno = rs.getString("mobile");
					%>
					<tr>
						<td><%out.println(name);%></td>
						<td><%out.println(gender);%></td>
						<td><%out.println(age);%></td>
						<td><%out.println(bldg);%></td>
						<td><%out.println(location);%></td>
						<td><%out.println(email);%></td>
						<td><%out.println(phno);%></td>
					</tr><%}
						if(!data){%>
						NO DATA AVAILABLE
						<% } %>
					</table>
			</div>
</div></div>
 <footer>
 developed by 
 </footer>
</body>
</html>
