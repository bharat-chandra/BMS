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
   
    	   String name = request.getParameter("email");
           
           String bhu = request.getParameter("bhu");
           
           String pass = request.getParameter("pass");
          
          MyDb db = new MyDb();
         Connection con = db.getCon();
         Statement stmt = con.createStatement();
         ResultSet rs = stmt.executeQuery("select * from users where email = '"+name+"' and password = '"+pass+"' and type='"+bhu+"' "); 
         rs.next();
         
         String t = rs.getString("type");
         String uid = rs.getString("id");
         HttpSession s = request.getSession();  
         s.setAttribute("id",uid);
         s.setAttribute("type",t);
        
        response.sendRedirect("rselectp.jsp");
        }catch(Exception e){
       response.sendRedirect("index.jsp?err=1");
       }
        
        %>
    </body>
</html>
