/*
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Information</title>
<body>
<%
// get parameters from the request
String activity = request.getParameter("activity");
String cname = request.getParameter("cname");
String cnumber= request.getParameter("cnumber");
String  csection= request.getParameter("csection");
String ddate= request.getParameter("ddate");
String dtime= request.getParameter("dtime");
String grade= request.getParameter("grade");
String  cdt= request.getParameter("cdt");
String date= request.getParameter("date");
String time= request.getParameter("time");
String emotion= request.getParameter("emotion");
 //declare a connection by using Connection interface

Connection con = null;
PreparedStatement stat=null;
try {

    
 
    Class.forName("com.mysql.jdbc.Driver").newInstance ();
       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/smarthealthmontioring", "root", "root");
       stat=con.PreparedStatement("insert into newupdate values(?,?,?,?,?,?,?,?,?,?,?)");

    //String InsertQuery="Select * from tbllibrarian";
    //System.out.println("shgfsxv");
   //System.out.println("megha");
       
    try
    {
        stat.executeUpdate(InsertQuery);
        out.println("Record Inserted to database successfully.");
    }
    catch(SQLException e)
    {
        out.println("Unable to Insert Record to database.");
    }



}
catch(SQLException ex)
{
    out.println("Unable to connect to database.");
}
%>
</body>
</html>
*/