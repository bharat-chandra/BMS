<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>
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
<div class="container" style="padding-top:50px">
		<div class="row" style="background:indianred">
			<div class="col-md-4">
				<h3><center>BLOOD BANK REGISTRATION</center></h3>
		        <form action="rbloodbank.jsp" method="post">  
			        <pre>
			        	<label class="main">Blood Bank Name : </label>
				        <input type="text" placeholder="name" name="name">           
				        <label class="main">Blood Group : </label>
				        <input type="text" placeholder="blood group" name="bld">				            
				        <label class="main">Address: </label>
				        <input type="text" placeholder="address" name="add">				
				        <label class="main">Email: </label>
				        <input type="text" placeholder="email" name="email">				           
				        <label class="main">Phone no: </label>
				        <input type="text" placeholder="contact no" name="phno">
		        		<input type="submit" value="Register"/>
			        </pre>
				</form>
			</div>
			<div class="col-md-8" >
				<%
	             MyDb db = new MyDb();
	           Connection con =db.getCon();
	           HttpSession s = request.getSession();
	           String role = (String)s.getAttribute("type");
	           if(role==null){
	        	   role="x";
	           }
	           Statement stmt = con.createStatement();
	          ResultSet rs = stmt.executeQuery("select * from bregister;"); 
	        %>
	        <h3>All Results :  <%if(role.equals("h")){%>
			<a href="logout.jsp" style="float:right">logout</a><%}%> </h3>
				<table border=1>
					<tr>
						<th>Name</th>
						<th>Blood group</th>
						<th>address</th>
						<th>Email</th>
						<th>Phone no</th>
						<th>Delete</th>
					</tr>
					<%
			          while( rs.next()){
				           String name = rs.getString("bname");
				           String bldg = rs.getString("bld");
				           String add = rs.getString("address");
				           String email = rs.getString("email");
				           String phno = rs.getString("phno");
					%>
					<tr>
						<td><%out.println(name);%></td>
						<td><%out.println(bldg);%></td>
						<td><%out.println(add);%></td>
						<td><%out.println(email);%></td>
						<td><%out.println(phno);
						if(role.equals("h")){
							%></td>
						<td><%out.println("<a href=delete.jsp?org=hos&id="+rs.getString("bid")+">delete</a>");%></td>
					</tr><%}} %>
				</table>
			</div>
		</div>
</div>
<footer>developed by</footer>
</body>
</html>
