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
		String file=null;
		String a=null,b=null,c=null;
	
		try {
			
			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				if(paramname.equalsIgnoreCase("name"))
				{
					a=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("pwd"))
				{
					b=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("dob"))
				{
					c=multi.getParameter(paramname);
				}
                                
				
				}
			
 
 PreparedStatement ps=connection.prepareStatement("insert into user(uname,pwd,dob) values(?,?,?)");
				ps.setString(1,a);
                           	ps.setString(2,b);
				ps.setString(3,c);	
       			
			int x=ps.executeUpdate();
		
			out.println("User Registered Successfully......");
			  %>
<p><a href="user.html">Back</a> <a href="index.html">Home</a> </p>

</body>
			  </html>
			  <%
			
				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
	
 %>
</body>
</html>



