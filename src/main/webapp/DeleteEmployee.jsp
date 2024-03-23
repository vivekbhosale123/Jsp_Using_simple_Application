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
	<jsp:include page="mainPage.jsp"></jsp:include>
	<%
	 
	   try
	   {
		 int id=Integer.parseInt(request.getParameter("id"));
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/practice","root","Aai@8530");
		 if(conn!=null)
		 {
			stmt=conn.prepareStatement("delete from employeee where id=?");
			stmt.setInt(1,id);
			int v=stmt.executeUpdate();
			if(v>0)
			{
				response.sendRedirect("ViewEmployee.jsp");
			}
			else
			{
				out.println("Not Deleted succcess");
			}
		 }
		 else
		 {
			 out.println("not connected databases");
		 }
	   }
	   catch(Exception ex)
	   {
		   out.println("Exception is "+ex);
	   }
	%>
</body>
</html>