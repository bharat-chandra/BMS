<%@page import="java.sql.*"%>
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
    	   String name = request.getParameter("name");
           String bld = request.getParameter("bld");
           String add = request.getParameter("add");
           String email = request.getParameter("email");
           String phno = request.getParameter("phno");

           
           MyDb db = new MyDb();
           Connection con =db.getCon();
           Statement stmt = con.createStatement();
           stmt.executeUpdate("insert into bregister(bname,bld,address,email,phno)values('"+name+"','"+bld+"','"+add+"','"+email+"','"+phno+"') ");
           out.println("register sucess");
           response.sendRedirect("registrationsuccess.jsp");
        
        } catch (Exception e){
       out.println(e);
       } 
      %>
    </body>
</html>
