<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<html>
<head>
</head>
<body>
<%

		ServletContext context = getServletContext();

		String dirName =context.getRealPath("Gallery/");
		String paramname=null;
               	
		String a=null,b=null,c=null,d=null,e=null,f=null,g=null,h=null,i=null,j=null,k=null;

			try
                        {
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
                                
				if(paramname.equalsIgnoreCase("crname"))
				{
					d=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("csection"))
				{
					e=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("ddate"))
				{
					f=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("dtime"))
				{
					g=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("grade"))
				{
					h=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("date"))
				{
					i=multi.getParameter(paramname);
				}
                                if(paramname.equalsIgnoreCase("time"))
				{
					j=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("emotion"))
				{
					k=multi.getParameter(paramname);
				}
				}
					
    
 
 PreparedStatement ps=connection.prepareStatement("insert into upadates(activity,cname,cnumber,crname,csection,ddate,dtime,grade,date,time,emotion) values(?,?,?,?,?,?,?,?,?,?,?)");
				ps.setString(1,a);
                                ps.setString(2,b);
				ps.setString(3,c);	
                                ps.setString(4,d);
                                ps.setString(5,e);
                                ps.setString(6,f);
                                ps.setString(7,g);
				ps.setString(8,h);
                                ps.setString(9,i);   
                                ps.setString(10,j);
                                ps.setString(11,k);
	int x=ps.executeUpdate();
		
			out.println("Updated Successfully......");
                       
                        }
	
	
 %>		  
</body>
</html>



