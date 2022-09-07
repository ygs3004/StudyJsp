package ch12.com.filter;

import javax.servlet.*;
import java.io.IOException;
import java.io.PrintWriter;

public class InitParamFilter implements Filter {

    private FilterConfig filterConfig = null;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("Filter02 초기화...");
        this.filterConfig = filterConfig;
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
            throws IOException, ServletException {
        System.out.println("Filter02 수행...");

        String id = request.getParameter("id");
        String pwd = request.getParameter("pwd");

        String param1 = filterConfig.getInitParameter("param1");
        String param2 = filterConfig.getInitParameter("param2");

        String message;

        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter writer = response.getWriter();

        if(id.equals(param1) && pwd.equals(param2)){
            message = "로그인 성공했습니다.";
        }else{
            message = "로그인 실패했습니다.";
        }

        writer.println(message);

        filterChain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        System.out.println("Filter02 해제");
    }

}