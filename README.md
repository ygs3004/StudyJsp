# jspStudy

- 학원 자바수업 코드파일(web_study_#)



- 쉽게배우는 Jsp웹 프로그래밍
   - BookMarket : 도서판매 사이트, 연습문제
   - WebMarket : 상품판매 사이트(전자기기), 예제





jsp프로젝트 절대 경로 html태그 안에서
${pageContext.request.contextPath}

<%%> 안에서 resouces/mages/upload -> 상대경로
<% 
request.getServletContext().getRealPath("resources/images/upload");
%>



- Servlet Template, 인텔리제이 setting -> edior -> file and template -> web에서 생성 가능

#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end
#parse("File Header.java")

#if ($JAVAEE_TYPE == "jakarta")
import jakarta.servlet.*;
import jakarta.servlet.http.*;
#else
import javax.servlet.*;
import javax.servlet.http.*;
#end
import java.io.IOException;

@WebServlet("/${Class_Name}")
public class ${Class_Name} extends HttpServlet {
   private static final long serialVersionUID = 1L;

   /**
    * @see HttpServlet#HttpServlet()
    */
   public ${Class_Name} {
      super();
      // TODO Auto-generated constructor stub
   }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      // TODO Auto-generated method stub
      response.getWriter().append("Served at: ").append(request.getContextPath());
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}
