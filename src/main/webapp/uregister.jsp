<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>
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
<div class="container" style="padding-top:50px">
		<div class="row" style="background:indianred">
			<div class="col-md-4">
				<h3><center>DONOR REGISTRATION</center></h3>  
				<form action="Ureg.jsp" method="post">
				    <pre>                      
				          <label class="main">Donor Name: </label>
				          <input type="text" placeholder="uername" name="dname">
				          <label class="main">Mobile : </label>
				          <input type="text" placeholder="mobile" name="mobile">
				          <label class="main">Email: </label>
				          <input type="text" placeholder="Email" name="email">
				          <label class="main">Gender:</label>
				          <select  style="width: 145px;" name="gender">
				          <option value="male">male</option>
				          <option value="female">female</option>
				          <option value="other">other</option>
				          </select>
				          <label class="main">Age: </label>
				          <input type="text" placeholder="age" name="age">
				          <label class="main">Blood Group: </label>
				          <input type="text" placeholder="blood" name="bld">
				          <label class="main">Location: </label>
				          <input type="text" placeholder="location" name="location"><br>
				          <input type="submit" value="Register">   
				    </pre>   
				 </form>
			</div>
			<div class="col-md-8">
				<%
	             MyDb db = new MyDb();
	           Connection con =db.getCon();
	           HttpSession s = request.getSession();
	           String role = (String)s.getAttribute("type");
	           String id = (String)s.getAttribute("id");
	           Integer uid = Integer.parseInt(id);
	           if(role==null){
	        	   role="x";
	           }
	           Statement stmt = con.createStatement();
	          ResultSet rs = stmt.executeQuery("select * from uregister where userid='"+uid+"' "); 
	        %>
	        <h3>All Results :  <%if(role.equals("user")){%>
			<a href="logout.jsp" style="float:right">logout</a><%}%> </h3>
				<table border=1>
					<tr>
						<th>Name</th>
						<th>Gender</th>
						<th>Age</th>
						<th>Blood group</th>
						<th>address</th>
						<th>Email</th>
						<th>Phone no</th>
						<th>Delete</th>
					</tr>
					<%
			          while( rs.next()){
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
						<td><%out.println(phno);
						if(role.equals("user")){
							%></td>
						<td><%out.println("<a href=delete.jsp?org=user&id="+rs.getString("id")+">delete</a>");%></td>
					</tr><%}} %>
				</table>
				</table>
			</div>
		</div>   
</div>
<footer>
 developed by 
</footer>
</body>
</html>
