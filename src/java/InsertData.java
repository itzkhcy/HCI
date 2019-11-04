/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kaver
 */
public class InsertData extends HttpServlet {
Connection conn=null;
Statement st=null;
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
    PrintWriter out = response.getWriter();
  
    String url = "jdbc:mysql://localhost:3306/";
    String dbName = "shm";
    String userName = "root";
    String password = "root";

    Statement st;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url + dbName, userName, password);
        System.out.println("Connected!");
        String cname = request.getParameter("cName");
        String csection = request.getParameter("cSection");
        String cnumber = request.getParameter("cNumber");
        String grade = request.getParameter("grade");
        String ddate = request.getParameter("dDate");
        String dtime = request.getParameter("dTime");
        String cdate = request.getParameter("cDate");
        String ctime = request.getParameter("cTime");
        String emotion = request.getParameter("emotion");
        int pid = Integer.parseInt(request.getParameter("pId"));
        String activity = request.getParameter("activity");

        String query = "INSERT INTO news (activity,cname,csection,cnumber,ddate,dtime,cndate,cntime,grade,emotion,courseId) VALUES('"+activity+"','"+cname+"','"+csection+"','"+cnumber+"','"+ddate+"','"+dtime+"','"+cdate+"','"+ctime+"','"+grade+"','"+emotion+"',"+pid+")";

        st = conn.createStatement();
        int result=st.executeUpdate(query);
        String returnData="most welcome";
        if(result==1){
            returnData="Success";
        }else{
            returnData="Failed";
        }
        
        
        String json=new Gson().toJson(returnData);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);

        conn.close();
    } catch (Exception e) {
        System.out.println(e);
    }
          
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
