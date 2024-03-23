<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UpdateEmployeePage</title>
</head>
<style>
    input{
       width:400px;
       height:40px;
    }
</style>
<body>
<%@ include file="mainPage.jsp" %>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    String name=request.getParameter("name");
    int sal=Integer.parseInt(request.getParameter("sal"));
%>
<center>
   <form name="frm" action="FinalUpdate.jsp" method="post">
       <input type="text" name="id" value="<%=id%>" ><br><br>
       <input type="text" name="name" value="<%=name%>" ><br><br>
       <input type="text" name="sal" value="<%=sal%>" ><br><br>
       <input type="submit" name="s" value="Update Employee">
   </form>
   </center>
</body>
</html>