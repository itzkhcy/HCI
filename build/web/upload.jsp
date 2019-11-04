
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

var na6=document.s.email.value;
if(na6=="")

{
alert("Please Enter the Email");
document.s.email.focus();
return false;
}

var na7=document.s.mob.value;
if(na7=="")

{
alert("Please Enter the Mobile");
document.s.mob.focus();
return false;
}


var na8=document.s.photo.value;
if(na8=="")

{
alert("please choose image");
document.s.photo.focus();
return false;
}


var na9=document.s.cap.value;
if(na9=="")

{
alert("please Enter Location");
document.s.cap.focus();
return false;
}



}

</script>



<![endif]-->
<style>
article, aside, figure, footer, header, hgroup,
menu, nav, section { display: block; }
body {
	background-color: #57614e;
}
.style1 {color: #FFFFFF}
</style>

</head>
<body>


	<form name="s" method="post" enctype="multipart/form-data" action="upload2.jsp" onSubmit="return valid()">
	
	<table height="351" align="center">
	<tr>
	  <td><div align="center" class="style1">
	    <p><font size="+3" style="Arial Black" >User Registration</font></p>
	    
	  </div></td>
	  </tr>
	<tr>
	<td><table height="344">
	
	
	
	<tr>
	<td>
	  <span class="style1"><font size="+1">User Name:* </font> </span></td>
	<td><input type="text" id="name" name="name" style="width:100%"></td>
	</tr>
	<tr>
	<td>
	  <span class="style1"><font size="+1">Password :*</font> </span></td>
	<td><label>
	  <input type="password" id="pwd" name="pwd" style="width:100%">
	</label></td>
	</tr>
	<tr>
	<td>
	  <span class="style1"><font size="+1">DOB(dd/mm/yyyy) :*</font> </span></td>
	<td><label>
	  <input type="text" id="dob" name="dob" style="width:100%">
	</label></td>
	</tr>
	
	<tr>
	<td><span class="style1"><font size="+1">Email :*</font> </span></td>
	<td><input type="text" id="email" name="email" style="width:100%"></td>
	</tr>
	<tr>
	<td>
	  <span class="style1"><font size="+1">Mobile :*</font> </span></td>
	<td><label>
	  <input type="text" id="mob" name="mob" style="width:100%">
	</label></td>
	</tr>
	
	<tr>
	<td><span class="style1"><font size="+1">Location:*</font></span></td>
	<td><input type="text" id="cap" name="cap" style="width:100%"></td>
	</tr>
	
	<tr>
	  <td><span class="style1"><font size="+1">Choose Photo:*</font></span></td>
	  <td><input type="file" id="photo" name="photo" style="width:100%" ></td>
	  </tr>
	<tr>
	  <td></td>
	  <td>&nbsp;</td>
	  </tr>
	<tr>
	<td><a href="index.html">Home</a></td>
	<td><input type="submit" value="Register" id="button1"><input type="reset" value="clear"></td>
		  </tr>
	</table>	</td>
	</tr>
	</table>
	
	</form>
 

</html>
