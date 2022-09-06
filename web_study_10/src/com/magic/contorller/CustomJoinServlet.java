package com.magic.contorller;

import com.magic.dao.EmployeesDAO;
import com.magic.dto.EmployeesVO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Servlet implementation class CustomJoinServle
 */
@WebServlet("/custom.do")
public class CustomJoinServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomJoinServlet() {
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
        HttpSession session = request.getSession();
        EmployeesVO emp = (EmployeesVO) session.getAttribute("loginUser");
        int result = (int)session.getAttribute("result");

        if(emp != null && result == 2){
            String url="customjoin.jsp";

            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
        }else{
            response.sendRedirect("login.do");
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        // doGet(request, response);
        request.setCharacterEncoding("UTF-8");
        EmployeesVO member = new EmployeesVO();
        member.setId(request.getParameter("id"));
        member.setPass(request.getParameter("pwd"));
        member.setName(request.getParameter("name"));
        member.setLev(request.getParameter("lev"));
        member.setGender(Integer.parseInt(request.getParameter("gender")));
        member.setPhone(request.getParameter("phone"));

        EmployeesDAO memberDao = EmployeesDAO.getInstance();

        memberDao.insertMember(member);

        request.setAttribute("member",member);
        request.setAttribute("message","회원 등록에 성공했습니다.");

        String url="joinsuccess.jsp";
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);
    }

}