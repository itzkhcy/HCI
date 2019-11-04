
<%@page import="java.sql.*,java.util.*"%>

<%
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

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/smh", "root", "root");
Statement st=conn.createStatement();

 int i=st.executeUpdate("insert into news(activity,cname,cnumber,csection,ddate,dtime,grade,cntime,cndate,emotion) valuess(('"+activity+"'),('"+cname+"'),('"+cnumber+"'),('"+csection+"'),('"+ddate+"'),('"+dtime+"'),('"+grade+"'),('"+cntime+"'),('"+cndate+"'),('"+emotion+"'))");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);

}
%>