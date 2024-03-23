<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NavBar</title>
<style>
    ul{
      width:750px;
      height:40px;
      background-color: red;
      margin:20px;
      padding:20px;
      display: flex;
    }
    li{
      list-style: none;
    }
    a{
       text-decoration: none;
    }
    li a{
       color: white;
       margin:20px;
       padding:20px;
       font-size: 20px;
       font-family:fantasy;
    }
</style>
</head>
<body>
    <center><h1>Main Page</h1></center>
    <center>
    <ul>
       <li><a href="AddEmployee.jsp">Add Employee</a></li>
       <li><a href="ViewEmployee.jsp">View Employee</a></li>
       <li><a href="">Delete Employee</a></li>
       <li><a href="">Update Employee</a></li>
    </ul>
    </center>
</body>
</html>