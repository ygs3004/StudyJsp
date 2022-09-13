package com.seoil.controller;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.seoil.dao.MovieDAO;
import com.seoil.dto.MovieVO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/movieupdate.do")
public class MovieUpdate extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public MovieUpdate() {
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
        String url = "movie/movieUpdate.jsp";
        int code = Integer.parseInt(request.getParameter("code"));
        MovieDAO mdao = MovieDAO.getInstance();
        MovieVO mvo = mdao.selectProductByCode(code);

        request.setAttribute("movie", mvo);

        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request,response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        // doGet(request, response);

        request.setCharacterEncoding("UTF-8");

        String saveDirectory = request.getServletContext().getRealPath("images");
        int maxPostSize = 5 * 1024 * 1024; // 5MB까지 처리
        String encType = "UTF-8";
        DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
        MultipartRequest multi = new MultipartRequest(request, saveDirectory, maxPostSize, encType, policy);

        MovieVO mvo = new MovieVO();
        mvo.setCode(Integer.parseInt(multi.getParameter("code")));
        mvo.setTitle(multi.getParameter("title"));
        mvo.setPrice(Integer.parseInt(multi.getParameter("price")));
        mvo.setDirector(multi.getParameter("director"));
        mvo.setActor(multi.getParameter("actor"));
        mvo.setSynopsis(multi.getParameter("synopsis"));

        if(multi.getFilesystemName("poster")==null){
            mvo.setPoster(multi.getParameter("nonmakeImg"));
        }else{
            mvo.setPoster(multi.getFilesystemName("poster"));
        }

        MovieDAO productDAO = MovieDAO.getInstance();
        productDAO.updateProduct(mvo);

        response.sendRedirect("movielist.do");
    }
}