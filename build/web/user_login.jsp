<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>

<%

        String username=request.getParameter("username");

        String Password=request.getParameter("password");


session.setAttribute("uname", username);

try
{
	   String sql="SELECT * FROM user where uname='"+username+"' and pwd='"+Password+"'";
        Statement stmt = connection.createStatement();
	    ResultSet rs =stmt.executeQuery(sql);
		String utype="";
	   if(rs.next())
	    {
	    response.sendRedirect("user_01.html");
           }
	    else
	    {
	    response.sendRedirect("wronglogin.html");
          }
}

catch(Exception e)
{out.print(e);}
%>


