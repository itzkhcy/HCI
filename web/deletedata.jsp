<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css" />

<![endif]-->
<style>
article, aside, figure, footer, header, hgroup,
menu, nav, section { display: block; }
body {
	background-color: #e5d6da;
}
.style1 {color: #FFFFFF}
* {
  box-sizing: border-box;
}

body {
  margin: 0;
}

/* Style the header */
.header {
  background-color: #f1f1f1;
  padding: 20px;
  text-align: center;
}

/* Style the top navigation bar */
.topnav {
  overflow: hidden;
  background-color: #333;
}

/* Style the topnav links */
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}
</style>
</head>
<body>
 <form name="s" method="post" enctype="multipart/form-data" action="add_new02.jsp" >

	<div class="header">
  <h1>Smart Health Tracking System (Tracking Emotions)</h1>
</div>

<div class="topnav" align="right">
    			
			<a href="index.html">Logout</a>
		</div>
<a href="user_01.html"><h3>Back</h3></a>
     
       <p align="center">
           <table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>




<%

String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "shm";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

 Connection connection = null;
 Statement statement = null;
ResultSet resultSet = null;
%>

<table align="center" cellpadding="1" cellspacing="1" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Activity</b></td>
<td><b>Course Name</b></td>
<td><b>Course Number</b></td>
<td><b>Course Section</b></td>
<td><b>Due Date</b></td>
<td><b>Due Time</b></td>
<td><b>Grade</b></td>
<td><b>Current Time</b></td>
<td><b>Current Date</b></td>
<td><b>Emotion</b></td>
<td><b>Course Id</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM news";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
<td><%=resultSet.getString("activity") %></td>
<td><%=resultSet.getString("cname") %></td>
<td><%=resultSet.getString("cnumber") %></td>
<td><%=resultSet.getString("csection") %></td>
<td><%=resultSet.getString("ddate") %></td>
<td><%=resultSet.getString("dtime") %></td>
<td><%=resultSet.getString("grade") %></td>
<td><%=resultSet.getString("cntime") %></td>
<td><%=resultSet.getString("cndate") %></td>
<td><%=resultSet.getString("emotion") %></td>
<td><%=resultSet.getString("courseId") %></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>