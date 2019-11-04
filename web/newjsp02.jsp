<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>

<html>
<body>
<%
     
	 
            String activity=request.getParameter("activity");
            String cname=request.getParameter("cname");
            String cnumber=request.getParameter("cnumber");
            String csection=request.getParameter("csection");
            String ddate=request.getParameter("ddate");
            String dtime=request.getParameter("dtime");
            String grade=request.getParameter("grade");
            String cdate=request.getParameter("cdate");
            String cndate=request.getParameter("cndate");
            String cntime=request.getParameter("cntime");
            String emotion=request.getParameter("emotion");
      
	 
		try
		{
			 
			//int s1=0,s2=0,s3=0,s4=0,s5=0,s6=0,s7=0,s8=0,s9=0,s10=0,s11=0;
			

		PreparedStatement pst2=connection.prepareStatement("insert into updas values(?,?,?,?,?,?,?,?,?,?,?)");

		pst2.setString(1,activity);
                pst2.setString(2,cname);
                pst2.setString(3,cnumber);
                pst2.setString(4,csection);
                pst2.setString(5,ddate);
                pst2.setString(6,dtime);
                pst2.setString(7,grade);
                pst2.setString(8,cdate);
                pst2.setString(9,cndate);
                pst2.setString(10,cntime);
                pst2.setString(11,emotion);
                
   
		pst2.executeUpdate();
		Statement st=connection.createStatement();


		out.print("Upadate SUCCESSFULLY");

		}
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  

%>

</body>
</html>