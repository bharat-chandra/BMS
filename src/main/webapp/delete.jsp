<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
		   String org = request.getParameter("org");
   		   String id = request.getParameter("id");
		   
   		   MyDb db = new MyDb();
           Connection con =db.getCon();
           if(org.equals("bb"))
           {
        	   PreparedStatement stmt = con.prepareStatement("delete from bregister where bid='"+id+"' ");
        	   stmt.executeUpdate();
               response.sendRedirect("bloodbank.jsp");
           }
           if(org.equals("hos"))
           {
        	   PreparedStatement stmt = con.prepareStatement("delete from hregister where hid='"+id+"' ");
        	   stmt.executeUpdate();
               response.sendRedirect("viewhospital.jsp");
           }
           if(org.equals("user"))
           {
        	   PreparedStatement stmt = con.prepareStatement("delete from uregister where uid='"+id+"' ");
        	   stmt.executeUpdate();
               response.sendRedirect("viewdonor.jsp");
           }

%>    