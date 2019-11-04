 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.json.simple.JSONObject"%>
 <%@page contentType="text/html; charset=UTF-8"%>

    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="style.css" />

<!--[endif]-->
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
 <form name="s" method="post" enctype="multipart/form-data" action="add_new03.jsp" >

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
        
<a href="user_01.html"><h3>Back</h3></a>
<%
JSONObject obj=new JSONObject();

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
<hr>
<h2 align="center"><font><strong>View Activities</strong></font></h2>
<div class="table-responsive">
<table class="table" align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>

<tr bgcolor="#A52A2A">
<td><b>Activity</b></td>
<%
try{ 
    
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT DISTINCT activity FROM mod1 WHERE activity !='null'";
resultSet = statement.executeQuery(sql);

%>
<tr bgcolor="#DEB887">

    <td> 
        Select Activity  : <select name ="activity" id="activity_drop" onChange="getSelectedVal()">
        <%while(resultSet.next()){ %>
        <option value="<%=resultSet.getString("activity")%>"><%=resultSet.getString("activity")%></option>
                        <%}%>           
                         </select> 
   </td> 

<% 


} catch (Exception e) {
e.printStackTrace();
}
%>
<td><input type="button" class="btn-success" id="multipleUpdate" value="Update Records" onClick="updMultiple()"></td>
</tr>
</table>
<label id="resultLabel" for="resultStatus" class="label-info">Result will be display here</label>
</div>
<div class="table-responsive">
<table class="table" align="center" cellpadding="5" cellspacing="5" border="1" id="content_table">
    <tr>
        <th scopr="col">Course Id</th>
        <th scopr="col">Course Name</th>
        <th scopr="col">Course Number</th>
        <th scopr="col">Course Section</th>
        <th scopr="col">Due Date</th>
        <th scopr="col">Due Time</th>
        <th scopr="col">Grade</th>
        <th scopr="col">Current Date</th>
        <th scopr="col">Current Time</th>
        <th scopr="col">Emotions</th>
        <th scopr="col">Action</th>
    </tr>
</table></div>

<hr>
<div align="center">
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
</div>

<hr>

         <b><u>Note</u></b>
         <br>
<p>1.Enter Emotion, current date and time.
         <p>2.Archive an  activity when the deadline has passed  </p>   
 <p>3.Emotions scale is below for reference </p>
     <img src="emotions.jpg" width="750" height="450" alt="Emotions1"/>

     <hr>
     
     <script>
         var selectedVal=null;
         function getSelectedVal(){
             var lbl=document.getElementById("resultLabel");
              lbl.removeAttribute("class");
                     lbl.setAttribute("class","label-info");
                     lbl.innerText="Result will be display here";
             var date=new Date();
             var currDate=date.getFullYear()+'-'+(date.getMonth()+1)+'-'+date.getDate();
             var time= date.getHours()+":"+date.getMinutes()+":"+date.getSeconds();
             selectedVal=document.getElementById("activity_drop").value;
              $.ajax({
              type:"POST",
              url: '${pageContext.request.contextPath}/getData',
              data: {selectedVal:selectedVal},
              success: function(data){
                  var order_data = data;
                  var table=$('#content_table');
                  $('#content_table').find("tr:gt(0)").remove();
                  $.each(order_data, function(i, item) {
                     
                      var rowNew=$("<tr><td class='deId'></td><td class='cname'></td><td class='cnumber'></td><td class='csection'></td><td class='ddate'></td><td class='dtime'></td><td class='grade'></td></tr>");
                      var currentDate=$("<td><input type='text' class='form-field' value='"+currDate+"' name='currentDate' id='crDate+"+i+"'></td>");
                      var currentTime=$("<td><input type='text' class='form-field' value='"+time+"' name='currentTime' id='crTime"+i+"'></td>");
                      var emotions=$("<td><input type='text' class='form-field' value='0' name='emotions' id='emotion"+i+"'></td>");
                      var action=$("<td><input type='button' class='btn-danger' value='Delete' onclick='deleteData(this)'></td>");
                      
                      rowNew.children().eq(0).text(data[i]["courseId"]);
                      rowNew.children().eq(1).text(data[i]["courseName"]);
                      rowNew.children().eq(2).text(data[i]["courseNumber"]);
                      rowNew.children().eq(3).text(data[i]["courseSection"]);
                      rowNew.children().eq(4).text(data[i]["dueDate"]);
                      rowNew.children().eq(5).text(data[i]["dueTime"]);
                      rowNew.children().eq(6).text(data[i]["grade"]);
                      currentDate.appendTo(rowNew);
                      currentTime.appendTo(rowNew);
                      emotions.appendTo(rowNew);
                      action.appendTo(rowNew);

                   
                      rowNew.appendTo(table);
                      
                     // $('<option value='+ order_data[i] +'>'+order_data[i]).html('</options>').appendTo('#roll-name');
                  });
              }
        });
         }
        
        function deleteData(id){
        var table=document.getElementById("content_table");
                    var index=id.parentNode.parentNode.rowIndex;
            var row=table.rows[index];
            var item=$(id).closest("tr").find(".deId").text();
            var pId=$(id).closest("tr").find(".deId").text();
            var cName=$(id).closest("tr").find(".cname").text();
            var cNumber=$(id).closest("tr").find(".cnumber").text();
            var cSection=$(id).closest("tr").find(".csection").text();
            var dDate=$(id).closest("tr").find(".ddate").text();
            var dTime=$(id).closest("tr").find(".dtime").text();
            var grade=$(id).closest("tr").find(".grade").text();
            var cDate=table.rows[index].cells[7].children[0].value;
            var cTime=table.rows[index].cells[8].children[0].value;
            var emotion=table.rows[index].cells[9].children[0].value;
           
            var activity=document.getElementById("activity_drop").value;
            var dataId=id.parentNode.parentNode.cells[0].textContent;
            $.ajax({
              type:"POST",
              url: '${pageContext.request.contextPath}/DeleteData',
              data: {dataId:item},
              success: function(data){
                  var lbl=document.getElementById("resultLabel");
                  if(data==="Success"){
                     lbl.removeAttribute("class");
                     lbl.setAttribute("class","label-success");
                     lbl.innerText=data;
                        $.ajax({
                            type:"POST",
                            url: '${pageContext.request.contextPath}/InsertData',
                            data: {pId:pId,cName:cName,cSection:cSection,cNumber:cNumber,dDate:dDate,dTime:dTime,cDate:cDate,cTime:cTime,grade:grade,emotion:emotion,activity:activity},
                            success: function(data){
                                var lbl=document.getElementById("resultLabel");
                                if(data==="Success"){
                                    lbl.removeAttribute("class");
                                    lbl.setAttribute("class","label-success");
                                    lbl.innerText=data;
                                }else{
                                    lbl.removeAttribute("class");
                                    lbl.setAttribute("class","label-error");
                                    lbl.innerText=data;
                                }
                            }
                        });
                  }else{
                     lbl.removeAttribute("class");
                     lbl.setAttribute("class","label-error");
                     lbl.innerText=data;
                  }
              }
            });
            
             document.getElementById("content_table").deleteRow(index);

        }
        
        function updMultiple(){
            var table=document.getElementById("content_table");
            var rowCount=table.rows.length;
            for(var r=1;r<rowCount;r++){
           // var index=id.parentNode.parentNode.rowIndex;
                var row=table.rows[r];
           // var item=row.cells[0].textContent;
                var pId=row.cells[0].textContent;
               
                var cName=row.cells[1].textContent;
                var cNumber=row.cells[2].textContent;
                var cSection=row.cells[3].textContent;
                var dDate=row.cells[4].textContent;
                var dTime=row.cells[5].textContent;
                var grade=row.cells[6].textContent;
                
                var cDate=table.rows[r].cells[7].children[0].value;
                var cTime=table.rows[r].cells[8].children[0].value;
                var emotion=table.rows[r].cells[9].children[0].value;
                var activity=document.getElementById("activity_drop").value;
              
                $.ajax({
                            type:"POST",
                            url: '${pageContext.request.contextPath}/MultipleUpdate',
                            data: {pId:pId,cName:cName,cSection:cSection,cNumber:cNumber,dDate:dDate,dTime:dTime,cDate:cDate,cTime:cTime,grade:grade,emotion:emotion,activity:activity},
                            success: function(data){
                                 alert(data);
                                var lbl=document.getElementById("resultLabel");
                                if(data==="Success"){
                                    lbl.removeAttribute("class");
                                    lbl.setAttribute("class","label-success");
                                    lbl.innerText=data;
                                }else{
                                    lbl.removeAttribute("class");
                                    lbl.setAttribute("class","label-error");
                                    lbl.innerText=data;
                                }
                            }
                        });
                }
        }
        
     </script>    
     
</body>
</html>
