/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kaver
 */
public class getData extends HttpServlet {
Connection conn=null;
Statement st=null;
ResultSet rs=null;
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
        String pid = request.getParameter("selectedVal");

        ArrayList hd_list = new ArrayList<holdData>();
        String query = "select * from mod1 where activity='" + pid + "' ";

        System.out.println("query " + query);
        st = conn.createStatement();
        rs = st.executeQuery(query);
        while (rs.next()) {

            holdData hd=new holdData();

            hd.setCourseName(rs.getString("cname"));
            hd.setCourseNumber(rs.getString("cnumber"));
            hd.setCourseSection(rs.getString("csection"));
            hd.setGrade(rs.getString("grade"));
            hd.setDueDate(rs.getString("ddate"));
            hd.setDueTime(rs.getString("dtime"));
            hd.setCourseId(rs.getInt("coourseId"));
            hd.setCndate(rs.getString("cndate"));
            hd.setCntime(rs.getString("cntime"));
            hd.setEmotion(rs.getString("emotion"));
            hd_list.add(hd);
        }
        String json=new Gson().toJson(hd_list);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
        //request.setAttribute("hd_list", hd_list);
        //RequestDispatcher view = request.getRequestDispatcher("/searchview.jsp");
        //view.forward(request, response);
        conn.close();
    } catch (Exception e) {
        System.out.println(e);
    }
    }
    
    
    
    
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
