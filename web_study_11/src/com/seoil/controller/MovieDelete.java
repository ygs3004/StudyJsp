package com.seoil.controller;

import com.seoil.dao.MovieDAO;
import com.seoil.dto.MovieVO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/moviedelete.do")
public class MovieDelete extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public MovieDelete() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        // response.getWriter().append("Served at: ").append(request.getContextPath());
        String url = "movie/movieDelete.jsp";
        int code = Integer.parseInt(request.getParameter("code"));

        MovieDAO dao=MovieDAO.getInstance();
        MovieVO mvo = dao.selectProductByCode(code);

        HttpSession session = request.getSession();
        session.setAttribute("movie", mvo);
//        request.setAttribute("movie", mvo);

        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        int code = Integer.parseInt(request.getParameter("code"));
        MovieDAO.getInstance().deleteMovie(code);
        response.sendRedirect("movielist.do");
    }

}