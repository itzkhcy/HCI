<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

     <center>
<h3>Do You Want to View List of Scheduled Active Activities</H3>
<p>(*Before starting see the note below)<p>
</center>
       <p align="center">
  <%

      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="";
	
        

      	try 
	{
           
           String query="select * from mod1"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	  while ( rs.next() )
	   {
        
		s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		s7=rs.getString(7);
		s8=rs.getString(8);
	
	   }
		
		
%>
  
  <span class="style4"> View Details </span></p>
<table width="924" border="1" align="center">
  <tr>
    <td width="241"><div align="center"><span class="style3">Activity </span></div></td>
    <td width="168"><div align="center"><span class="style3">Course Name </span></div></td>
    <td width="109"><div align="center"><span class="style3">Course Number</span></div></td>
    <td width="154"><div align="center"><span class="style3">Course Section</span></div></td>
    <td width="102"><div align="center"><span class="style3">Due Date</span></div></td>
    <td width="124"><div align="center"><span class="style3">Due Time </span></div></td>
    <td width="124"><div align="center"><span class="style3">Grade Worth </span></div></td>
  </tr>
  <tr>
    
    <td><div align="center"><%=s1 %></div></td>
    <td><div align="center"><%=s2 %></div></td>
    <td><div align="center"><%=s3%></div></td>
    <td><div align="center"><%=s4%></div></td>
    <td><div align="center"><%=s5%></div></td>
     <td><div align="center"><%=s6%></div></td>
    <td><div align="center"><%=s7%></div></td>
  </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<%

	 

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
 <div align="center">
    <table border="0" width="31%" height="150">
 <tr>
        <td width="36%" height="25"><div align="left"><b><font color="#2a4f5e" size="5">Emotion:</font></b></div></td>
        <td width="64%" height="25">
            <input type="text"  name="emotion" size="15"></td>
        
        </td>
      </tr>
        <tr>
  
     <td width="36%" height="25"><div align="left"><b><font color="#2a4f5e" size="5">Date:</font></b></div></td>
        <td width="64%" height="25">    
        <input type="text"  name="cndate" size="15">
     
      </tr> </tr>
        <tr>
        <td width="36%" height="25"><div align="left"><b><font color="#2a4f5e" size="5">Time:</font></b></div></td>
        <td width="64%" height="25">    
        <input type="text"  name="cndtime" size="15">
     
      </tr>
      
   <tr>
	 <td width="100%" height="40" colspan="2">
         <p align="center"><input type="submit" value="submit"></P></td>
        </tr>
</table><hr>
     <div>
         <b><u>Note</u></b>
         <br>
<p>1.Enter Emotion, current date and time.
         <p>2.Archive an  activity when the deadline has passed  </p>   
 <p>3.Emotions scale is below for reference </p>
     <img src="emotions.jpg" width="750" height="450" alt="Emotions1"/>

     </div><hr>
</form>
</body>
</html>