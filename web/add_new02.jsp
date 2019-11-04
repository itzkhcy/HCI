<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>

<html>
<head>
</head>
<body>
<%

ArrayList list = new ArrayList();
		ServletContext context = getServletContext();

		String dirName =context.getRealPath("Gallery/");
		String paramname=null;
		
		String a=null,b=null,c=null,d=null,e=null,f=null,g=null,h=null;
	
		try {
			
			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
                          
				paramname = (String) params.nextElement();
				if(paramname.equalsIgnoreCase("activity"))
				{
					a=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("cname"))
				{
					b=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("cnumber"))
				{
					c=multi.getParameter(paramname);
				}
                                if(paramname.equalsIgnoreCase("csection"))
				{
					d=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("ddate"))
				{
					e=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("dtime"))
				{
					f=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("grade"))
				{
					g=multi.getParameter(paramname);
				}
				
                                if(paramname.equalsIgnoreCase("emotion"))
				{
					h=multi.getParameter(paramname);
				}
				}
			
 PreparedStatement ps=connection.prepareStatement("insert into mod1(activity,cname,cnumber,csection,ddate,dtime,grade,emotion) values(?,?,?,?,?,?,?,?)");
				ps.setString(1,a);
                           	ps.setString(2,b);
				ps.setString(3,c);	
                                ps.setString(4,d);
                           	ps.setString(5,e);
				ps.setString(6,f);
                                ps.setString(7,g);
                           	ps.setString(8,h);
				
                           	
       			
			int x=ps.executeUpdate();
		
			out.println("Update Successfully......");
			  %>
<p><a href="user_01.html">Back</a> <a href="index.html">Home</a> </p>

</body>
			  </html>
			  <%
			
				
		} 
		catch (Exception e1) 
		{
			out.println(e1.getMessage());
		}
	
 %>
</body>
</html>



