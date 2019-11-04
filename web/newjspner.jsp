<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%
Connection connection = null;
PreparedStatement pst2=null; 
 String url="jdbc:mysql://localhost:3306/shm";
            String user="root";
            String password="root";

  try {    
   
    

	  Class.forName("com.mysql.jdbc.Driver");	
          connection = DriverManager.getConnection(url,user,password);
      
            String activity=request.getParameter("activity");
            String cname=request.getParameter("cname");
            String cnumber=request.getParameter("cnumber");
            String csection=request.getParameter("csection");
            String ddate=request.getParameter("ddate");
            String dtime=request.getParameter("dtime");
            String grade=request.getParameter("grade");
           
            String cndate=request.getParameter("cndate");
            String cntime=request.getParameter("cntime");
            String emotion=request.getParameter("emotion");
 
                pst2=connection.prepareStatement("insert into news(activity,cname,cnumber,csection,ddate,dtime,grade,cntime,cndate,emotion) values(?,?,?,?,?,?,?,?,?,?)");
                
                pst2.setString(1,activity);
                pst2.setString(2,cname);
                pst2.setString(3,cnumber);
                pst2.setString(4,csection);
                pst2.setString(5,ddate);
                pst2.setString(6,dtime);
                pst2.setString(7,grade);
         
                pst2.setString(8,cndate);
                pst2.setString(9,cntime);
                pst2.setString(10,emotion);
      
                 pst2.executeUpdate();
                 out.print("updated");
}
catch(Exception e)
{
System.out.println(e);
}
%>
        
    </body>
</html>
