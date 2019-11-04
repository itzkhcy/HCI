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
	
        Statement st=connection.createStatement();
        st.executeUpdate("insert into  updas (activity,cname,cnumber,csection,ddate,dtime,grade,cdate,cntime,cndate,emotion) values (("+activity+"),("+cname+"),("+cnumber+"),("+csection+"),("+ddate+"),("+dtime+"),("+grade+"),("+cdate+"),("+cntime+"),("+cndate+"),("+emotion+"))");
	out.print("Upadate SUCCESSFULLY");
		
%><p><a href="index.html">Back</a></p>

</body>
</html>

	<% 	}
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
