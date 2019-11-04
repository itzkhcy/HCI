
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.*,java.util.Random" %>

<html>
<head>
<title>face image</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />

<script language="javascript" type="text/javascript">



function valid()
{
var na3=document.s.name.value;
if(na3=="")

{
alert("Please Enter User Name");
document.s.name.focus();
return false;
}

var na4=document.s.pwd.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.pwd.focus();
return false;
}

var na5=document.s.dob.value;
if(na5=="")

{
alert("Please Enter the DOB");
document.s.dob.focus();
return false;
}
}

</script>



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


	<form name="s" method="post" enctype="multipart/form-data" action="upload_new2.jsp" onSubmit="return valid()">
	<div class="header">
  <h1>Smart Health Tracking System (Tracking Emotions)</h1>
</div>

<div class="topnav" align="right">
    		
			<a href="index.html">Home</a>
  </div>           
           <div align="center">
	<table height="351" align="center">
	<tr>
	  <td><div align="center" class="style1">
	    <p><font size="+3" style="Arial" >User Registration</font></p>
	    
	  </div></td>
	  </tr>
	<tr>
	<td><table height="344">	
	<tr>
	<td>
	  <span class="style"><font size="+1">User Name:* </font> </span></td>
	<td><input type="text" id="name" name="name" style="width:100%"></td>
	</tr>
	<tr>
	<td>
	  <span class="style"><font size="+1">Password :*</font> </span></td>
	<td><label>
	  <input type="password" id="pwd" name="pwd" style="width:100%">
	</label></td>
	</tr>
	<tr>
	<td>
	  <span class="style"><font size="+1">DOB(dd/mm/yyyy) :*</font> </span></td>
	<td><label>
	  <input type="text" id="dob" name="dob" style="width:100%">
	</label></td>
        </tr>
	<tr>
	
	<td>
            <span class="style"><font size="+1"> Register :*</font> </span></td>
        <td><label>
                <input type="submit" value="Register" id="button1" style="width:100%"></label>
           </td>
		  </tr>
	</table>	
	</tr>
	</table>
                </div>
	</form>
 
</html>

