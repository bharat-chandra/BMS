<%@page import="java.io.*" %>
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
  	   		 <%
  	   		 	try{
				HttpSession s = request.getSession();
				String role = (String)s.getAttribute("type");
				if(role.equals("user")){
				%>
	       	<div class="col-md-6">
				<a href="uregister.jsp">
					<img width="300px" height="400px" src="https://th.bing.com/th/id/OIP.B8WQv8sLQO8-GZbEbIlxfQHaE8?pid=ImgDet&rs=1" alt="user"/>
					<p>Click here for donor registration</p>
				</a>
			</div>
			<div class="col-md-6">
				<h2><a href="logout.jsp">L O G O U T</a></h2>
			</div>
			<%}if(role.equals("h")){%>
			<div class="col-md-4">
				<a href="rhospital.jsp">
					<img width="300px" height="400px" src="https://th.bing.com/th/id/OIP.RQoRZzfVptb_VPLl8I6gKgHaEn?pid=ImgDet&rs=1" alt="hospital"/>
					<p>Click here for hospital registration</p>
				</a>
			</div>
			<div class="col-md-4">
				<h2><a href="logout.jsp">L O G O U T</a></h2>
			</div>
			<%}if(role.equals("h")){%>
			<div class="col-md-4">
				<a href="bregister.jsp">
					<img width="300px" height="400px" src="https://th.bing.com/th/id/OIP.MAAuOWc4yVD2emyyWU5SwQHaHa?pid=ImgDet&rs=1" alt="blood bank"/>
					<p>Click here for blood bank registration</p>
				</a>
			</div>
			<%}
			}catch(Exception ex){
			out.println("access restricted, please login to add your blood donation details");
			} %>
		</div>
</div>
 <footer>
 developed by 
 </footer>
</body>
</html>