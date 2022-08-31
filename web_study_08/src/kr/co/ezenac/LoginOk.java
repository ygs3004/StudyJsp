package kr.co.ezenac;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class LoginOk
 */
@WebServlet("/LoginOk")
public class LoginOk extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private Connection connection;
    private Statement stmt;
    private ResultSet resultSet;

    private String name, id, pw, phone1, phone2, phone3, gender;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginOk() {
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
        // doGet(request, response);
    }

    private void actionDo(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        this.id = request.getParameter("id");
        this.pw = request.getParameter("pw");

        String query="SELECT*FROM member WHERE id='"+id+"' AND pw='"+pw+"'";

        try{
            Class.forName("oracle:jdbc:driver:OracleDriver");
            connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
            stmt = connection.createStatement();
            resultSet = stmt.executeQuery(query);

            while(resultSet.next()){
                name=resultSet.getString("name");
                id=resultSet.getString("id");
                pw=resultSet.getString("pw");
                phone1=resultSet.getString("phone1");
                phone2=resultSet.getString("phone2");
                phone3=resultSet.getString("phone3");
                gender=resultSet.getString("gender");
            }

            HttpSession httpSession=request.getSession();
            httpSession.setAttribute("name",name);
            httpSession.setAttribute("id",id);
            httpSession.setAttribute("pw",pw);

            response.sendRedirect("loginResult.jsp");

        }catch(Exception e){
            e.printStackTrace();

        }finally {
            try{
                if(resultSet != null){
                    resultSet.close();
                }
                if(stmt != null){
                    stmt.close();
                }
                if(connection != null){
                    connection.close();
                }
            }catch (Exception e2){
                e2.printStackTrace();
            }

        }

    }

}