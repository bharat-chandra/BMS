<%-- 
    Document   : Ureg
    Created on : Feb 22, 2016, 8:48:29 PM
    Author     : Oops
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       try{
          String name = request.getParameter("dname");
          String gen = request.getParameter("gender");
          String  age = request.getParameter("age");
          String add = request.getParameter("location");
          String mob = request.getParameter("mobile");
          String email = request.getParameter("email");
          String bld = request.getParameter("bld");
          
          HttpSession s = request.getSession();
          String uid = (String)s.getAttribute("id");
		  Integer userid = Integer.parseInt(uid);
		  
          MyDb db = new MyDb();
         Connection con = db.getCon();
         Statement stmt = con.createStatement();
         stmt.executeUpdate("insert into uregister(userid,name,email,mobile,gender,age,bld,location)values('"+userid+"','"+name+"','"+email+"','"+mob+"','"+gen+"','"+age+"','"+bld+"','"+add+"') ");

          response.sendRedirect("rselectp.jsp");
      
       }catch(Exception e){
       out.println(e);
       }
        
        %>
    </body>
</html>
