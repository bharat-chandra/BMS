<%@page import="java.sql.ResultSet"%>
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
<link rel="stylesheet" href="css/style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@include file="nav.jsp" %>
  <div class="container" style="padding-top:50px">
  	   <div class="row" style="background:indianred;padding:50px 0px 50px 0px;">
	       	<div class="col-md-4">
	       	<h2>Welcome To Blood Bank!</h2>
	       	
	       	<img class="img-thumbnail" src="https://th.bing.com/th/id/R.89a10595b78950834510a42c3b18634f?rik=pMegI%2f3rJcm8SQ&riu=http%3a%2f%2fwww.cozumel4you.com%2fwp-content%2fuploads%2f2017%2f02%2fblood.jpg&ehk=ythebIJgYWInKLyFHh4IEL0XzoXyVVERUylR2uo6aD4%3d&risl=&pid=ImgRaw&r=0">
	       	</div>
	       	<div class="col-md-4" style="padding:20px">
	       		<%
	       		boolean data = false;
	            MyDb db = new MyDb();
	            Connection con = db.getCon();
	            Statement stmt = con.createStatement();
	       		if ("POST".equalsIgnoreCase(request.getMethod())) {
		        	String bldgrp = request.getParameter("bldgrp");
		        	bldgrp = bldgrp.toLowerCase();
		            String requ = request.getParameter("requ");
		            String phno = request.getParameter("phno"); 
		            String date = request.getParameter("date");
		           stmt.executeUpdate("insert into emergency(bldgrp,reqUnits,phno,date)values('"+bldgrp+"','"+requ+"','"+phno+"','"+date+"') ");
		           response.sendRedirect("index.jsp");
		        }
	       		ResultSet rs = stmt.executeQuery("select * from emergency");
	       		%>
	       		<h6>Emergency req:</h6>
	    	   	<table border=1>
					<tr>
						<th>Blood group</th>
						<th>Required units</th>
						<th>Phno</th>
						<th>Date(yyyy-mm-dd)</th>
					</tr>
					<%while(rs.next()){
		       			data=true;
			 	           String bldgrp = rs.getString("bldgrp");
			 	           String requ = rs.getString("reqUnits");
			 	           String phno = rs.getString("phno");
			 	           String date = rs.getString("date");
			 	     %>
			 	     <tr>
						<td><%out.println(bldgrp);%></td>
						<td><%out.println(requ);%></td>
						<td><%out.println(phno);%></td>
						<td style="float:right"><%out.println(date);%></td>
					</tr><%} %>
				</table>
	       	</div>
	        <div class="col-md-4" style="text-align:right">
	        <h2>Login Here</h2>
			<form action="login.jsp" method="get">
			    <input type="email" name="email" placeholder="email"/><br><br>
			    <input type="password"  name="pass" placeholder="password"/><br><br>
			    <select name="bhu">
			    <option value="user">user</option>
			    <option value="h">admin</option>
			    </select><br><br>
			    <%
			    try{
			    Integer i = Integer.parseInt(request.getParameter("err"));
			    if(i==1)
			    {
			    %><span style="color:yellow">login failed !</span>
			    <%}}catch(Exception e){
			    	
			    }
			    %>
			    <input type="submit"  value="Login"/>  <br><br>
			    <input type="button"  value="Register" onclick="window.open('register.jsp')"/>   	 
			</form>
	        </div>
 		</div>
 		<div class="row" style="margin-bottom:50px">
 			<h2>Post Emergency Requirement</h2>
			<form action="index.jsp" method="post">
			    <input type="text" name="bldgrp" placeholder="blood group"/>
			    <input type="text"  name="requ" placeholder="required no.of units"/><br><br>
			    <input type="number" name="phno" placeholder="phone number">
			    <input type="date" name="date">
			    <input type="submit"  value="Post"/>     	 
			</form> 		
 		</div>
 </div>
 <footer>
 developed by 
 </footer>
</body>
</html>