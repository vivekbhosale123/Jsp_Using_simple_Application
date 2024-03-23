<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ViewEmployee</title>
</head>
<body>
	<%
	Connection conn;
	PreparedStatement stmt;
	ResultSet rs;
	%>
	<%@ include file="mainPage.jsp"%>
	<%
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/practice", "root", "Aai@8530");
		if (conn != null) {
			stmt = conn.prepareStatement("select * from employeee");
			rs = stmt.executeQuery();
	%>
	<center>
		<table border="4" width="65%">
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>SALARY</th>
				<th>DELETE</th>
				<th>UPDATE</th>
			</tr>
			<%
			    while(rs.next())
			    {
			    	int id=rs.getInt(1);
			    	String name=rs.getString(2);
			    	int sal=rs.getInt(3);
			%>
			  <tr>
			      <td><%=id%></td>
			      <td><%=name%></td>
			      <td><%=sal%></td>
			      <td><a href="DeleteEmployee.jsp?id=<%=rs.getInt(1)%>">Delete</a></td>
			      <td><a href="UpdateEmployee.jsp?id=<%= rs.getInt(1)%>&name=<%=rs.getString(2)%>&sal=<%=rs.getInt(3)%>">Update</a></td>
			  </tr>
			<%
			}
		    %>
		    </table>
		    </center>
		    <%
		    }
		    %>
		    <%
			} catch (Exception ex) {
			   out.println("exception is " + ex);
			}
			%>
		
</body>
</html>