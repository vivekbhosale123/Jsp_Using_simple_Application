<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%!Connection conn;
	PreparedStatement stmt;%>
	<%
	    int id=Integer.parseInt(request.getParameter("id"));
	    String name=request.getParameter("name");
	    int sal=Integer.parseInt(request.getParameter("sal"));
	try {
         Class.forName("com.mysql.cj.jdbc.Driver");
         conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/practice","root","Aai@8530");
         if(conn!=null)
         {
        	 stmt=conn.prepareStatement("update employeee set name=?,sal=? where id=?");
        	 stmt.setString(1,name);
        	 stmt.setInt(2,sal);
        	 stmt.setInt(3,id);
        	 int v=stmt.executeUpdate();
        	 if(v>0)
        	 {
        		 response.sendRedirect("ViewEmployee.jsp");
        	 }
        	 else
        	 {
        		 out.println("not Updated");
        	 }
         }
         else
         {
        	 out.println("not connected database");
         }
	} catch (Exception ex) {
         out.println("Exception is "+ex);
	}
	%>
</body>
</html>