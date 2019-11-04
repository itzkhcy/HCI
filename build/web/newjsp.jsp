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
		String a=null,b=null,c=null,d=null,e=null,f=null,g=null,h=null,i=null,j=null,k=null;
	
		FileInputStream fs=null;
 
		File file1 = null;
			
		
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
			
	}
	
			
 
 PreparedStatement ps=connection.prepareStatement("insert into user(uname,pwd,dob,email,mobile,location,imagess,count,sk) values(?,?,?,?,?,?,?,?,?)");
				ps.setString(1,a);
               	ps.setString(2,b);
				ps.setString(3,c);	
       			ps.setString(4,d);
       			ps.setString(5,ee);
       			ps.setString(6,ff);
       			
			 	ps.setBinaryStream(7, (InputStream)fs, (int)(file1.length()));
				ps.setInt(8,lyke);
				
				ps.setString(9,as);
				
       if(f == 0)
			ps.setObject(7,null);
		else if(f ==7)
		{
			fs1 = (FileInputStream)list.get(0);
			ps.setBinaryStream(7,fs1,fs1.available());
		}	
			int x=ps.executeUpdate();