<%@ page import="java.sql.*"%>
<%@ page import="java.sql.*,java.util.Random" %>

<html>
<head>
<title>AddJSp</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
<h3>Do You Want To Add An Activity?</H3>
(*Before starting see the note below)
</center>
     <hr>
  <div align="center">
    <table border="0" width="31%" height="150">
      <tr>
        <td width="36%" height="25"><div align="left"><b><font color="#2a4f5e" size="5">Activity Type:</font></b></div></td>
        <td width="64%" height="25">
            <select name="activity">
              
             <option value="select">---SELECT--- </option>
            <option value="assignment">Assignment </option>
            <option value="quiz">Quiz </option>
            <option value="exam">Exam </option>
            <option value="homework">Homework </option>
            <option value="project">Project </option>
            <option value="clubmeeting">Club Meeting </option>
            <option value="discussion">Discussion </option>
            <option value="paper">Paper</option>
            <option value="tutoring">Tutoring </option>
            <option value="addnewactivitytype">Add New Activity</option>
            </select>
        </td>
      </tr>
      <tr>
        <td width="36%" height="25"><div align="left"><b><font color="#2a4f5e" size="5">Course Name:</font></b></div></td>
        <td width="64%" height="25">    
        <input type="text"  name="cname" size="15"></td>
      </tr>
      <tr>
        <td width="36%" height="25"><div align="left"><b><font color="#2a4f5e" size="5">Course Number:</font></b></div></td>
        <td width="64%" height="25">    
        <input type="text"  name="cnumber" size="15"></td>
      </tr> 
       <tr>
        <td width="36%" height="25"><div align="left"><b><font color="#2a4f5e" size="5">Course Section:</font></b></div></td>
        <td width="64%" height="25">    
        <input type="text"  name="csection" size="15"></td>
      </tr>
       <tr>
        <td width="36%" height="25"><div align="left"><b><font color="#2a4f5e" size="5">Due Date:</font></b></div></td>
        <td width="64%" height="25">    
        <input type="text"  name="ddate" size="15"></td>
      </tr>
       <tr>
        <td width="36%" height="25"><div align="left"><b><font color="#2a4f5e" size="5">Due Time:</font></b></div></td>
        <td width="64%" height="25">    
        <input type="text"  name="dtime" size="15"></td>
      </tr>
      <tr>
        <td width="36%" height="25"><div align="left"><b><font color="#2a4f5e" size="5">Grade:</font></b></div></td>
        <td width="64%" height="25">
       <input type="text"  name="grade" size="15">
        </td>
      </tr>
      </tr>
      <tr>
        <td width="36%" height="25"><div align="left"><b><font color="#2a4f5e" size="5">Emotion:</font></b></div></td>
        <td width="64%" height="25">
            <input type="text"  name="emotion" size="15"></td>
        
        </td>
      </tr>
   <tr>
	 <td width="100%" height="40" colspan="2">
         <p align="center"><input type="submit" value="submit" id="button2"></P></td>
        </tr>
    </table>
      
  </div>
     <hr>
     <center>
<table border="0" cellpadding="0" cellspacing="0" width="460" bgcolor="#EEFFCA">
<tr>
<td width="100%"><font size="6" color="#008000"><center>&nbsp;See Here</center></font></td>
</tr>
<tr>
<td width="100%"><b>&nbsp;Current Date and time is:&nbsp; <font color="#FF0000">
<%= new java.util.Date() %>
</font></b></td>
</tr>
</table>
</center>
     <hr>
         <b><u>Note</u></b>
         <br>
         <p>1. Select one activity type from (assignment, quiz, exam, homework, project, club meeting, discussion, paper, tutoring, addNewActivityType) </p>
 <p>2. Grade worth: 20% , 30% , service, nothing. </p>   
 <p>3.Enter emotions </p>
     <img src="emotions.jpg" width="750" height="450" alt="Emotions1"/>

     </form>
</body>
</html>