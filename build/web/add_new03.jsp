<%@ include file="connect.jsp" %>
<%@page import="org.json.simple.JSONObject"%>
 <%@page contentType="text/html; charset=UTF-8"%>

<%

      

	JSONObject obj=new JSONObject();

      	
	String  s11=null,s2=null, s3=null,s4=null,s5=null,s6=null,s7=null,s8=null,s9=null;
	String s1;
	int c=0;

      	try 
	{




		ArrayList al = new ArrayList();

           String query="select * FROM mod1 "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   while ( rs.next() )
	   {

	  s1= rs.getString("activity");
           s2=rs.getString("cname");
            s3=rs.getString("cnumber"); 
       s4=rs.getString("csection");
     s5=rs.getString("ddate");
    s6=rs.getString("dtime");
    s7=rs.getString("grade");
		
    s9="Username="+s1+","+"DOB="+s2+","+"EMail="+s3+","+"Mobile="+s4+","+" Location="+s5;
               
    s9="activity="+s1+","+"cname="+s2+","+"cnumber="+s3+","+"csection="+s4+","+"ddate="+s5+","+"dtime="+s6+","+"grade="+s7;
         	al.add(s9);
                
	   }

	  
	
	  obj.put("Users",al);
		
   	  out.print(obj);
    	
		}

         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>


