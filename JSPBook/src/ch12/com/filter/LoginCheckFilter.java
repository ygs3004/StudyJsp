package ch12.com.filter;

import javax.servlet.*;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginCheckFilter implements Filter {

    PrintWriter writer;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("LoginCheckFilter 시작");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        String id = request.getParameter("id");
        String pw = request.getParameter("pw");

        if(id == null || id.equals("") || pw == null || pw.equals("")){
            request.getRequestDispatcher("loginForm.jsp").forward(request, response);
        }
        chain.doFilter(request, response);

    }

    @Override
    public void destroy() {
        System.out.println("LoginCheckFilter 종료");
        writer.close();
    }
}