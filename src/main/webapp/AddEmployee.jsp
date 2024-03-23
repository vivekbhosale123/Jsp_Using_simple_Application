<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddEmployee</title>
<style>
   input{
     width:400px;
     height:40px;
   }
</style>
</head>
<body>
<%!
  Connection conn;
  PreparedStatement stmt;
%>
<%@ include file="mainPage.jsp" %>
<center>
   <form>
       <input type="text" name="id" value=""><br><br>
       <input type="text" name="name" value=""><br><br>
       <input type="text" name="sal" value=""><br><br>
       <input type="submit" name="s" value="Add Employee">
   </form>
   <%
        String btn=request.getParameter("s");
        if(btn!=null)
        {
        	int id=Integer.parseInt(request.getParameter("id"));
    		String name=request.getParameter("name");
    		int sal=Integer.parseInt(request.getParameter("sal"));
        	try{
        		Class.forName("com.mysql.cj.jdbc.Driver");
        		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/practice","root","Aai@8530");
        		if(conn!=null)
        		{
        			stmt=conn.prepareStatement("insert into employeee values(?,?,?)");
        			stmt.setInt(1,id);
        			stmt.setString(2,name);
        			stmt.setInt(3,sal);
        			int v=stmt.executeUpdate();
        			if(v>0)
        			{
        				response.sendRedirect("ViewEmployee.jsp");
        			}
        			else
        			{
        				out.println("not added");
        			}
        		}
        		else
        		{
        			out.println("not connected database");
        		}
        	}
        	catch(Exception ex)
        	{
        		out.println("exception is "+ex);
        	}
        }
   %>
</center>
</body>
</html>