package kr.co.ezenac;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class LoginOk
 */
@WebServlet("/ModifyOk")
public class ModifyOk extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private Connection connection;
    private Statement stmt;
    private ResultSet resultSet;

    private String name, id, pw, phone1, phone2, phone3, gender;
    HttpSession httpSession;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyOk() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        // response.getWriter().append("Served at: ").append(request.getContextPath());
        actionDo(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        actionDo(request, response);
    }

    private void actionDo(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        httpSession=request.getSession();

        name=request.getParameter("name");
        id=request.getParameter("id");
        pw=request.getParameter("pw");
        phone1=request.getParameter("phone1");
        phone2=request.getParameter("phone2");
        phone3=request.getParameter("phone3");
        gender=request.getParameter("gender");

        if(pwConfirm()){

        }
    }

    private boolean pwConfirm(){
        boolean rs = false;
        String sessionPw = (String)httpSession.getAttribute("pw");

        if(sessionPw.equals(pw)){
            rs=true;
        }
        return rs;
     }
}