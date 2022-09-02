package com.javalec.ex;


import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

// DAO(Data Access Object) : DB를 사용해 데이터를 조회하거나 조작하는
// 기능을 처리하는 오브젝트
public class MemberDao {

    public static final int MEMBER_NONEXISTENT=0;
    public static final int MEMBER_EXISTENT=1;
    public static final int MEMBER_JOIN_FAIL=0;
    public static final int MEMBER_JOIN_SUCESS=1;
    public static final int MEMBER_LOGIN_PW_NO_GOOD=0;
    public static final int MEMBER_LOGIN_SUCCESS=1;
    public static final int MEMBER_LOGIN_IS_NOT=-1;
    private static MemberDao instance = new MemberDao();

    private MemberDao(){

    }

    public static MemberDao getInstance(){
        return instance;
    }

    public int insertMember(MemberDto dto){

        int ri=0;

        Connection connection = null;
        PreparedStatement pstmt = null;
        String query = "INSERT INTO members VALUES(?,?,?,?,?,?)";

        try{
            connection = getConnection();
            pstmt = connection.prepareStatement(query);
            pstmt.setString(1, dto.getId());
            pstmt.setString(2, dto.getPw());
            pstmt.setString(3, dto.getName());
            pstmt.setString(4, dto.getEmail());
            pstmt.setTimestamp(5, dto.getrDate());
            pstmt.setString(6, dto.getAddress());
            pstmt.executeUpdate();

            ri= MemberDao.MEMBER_JOIN_SUCESS;

        }catch(Exception e){
            e.printStackTrace();
        }finally {
            try{
                if(pstmt != null)
                    pstmt.close();
                if(connection != null)
                    connection.close();

            }catch (Exception e2){
                e2.printStackTrace();
            }
        }
        return ri;
    }

    public int confirmId(String id){
        int ri=0;

        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet set = null;

        String query = "SELECT id FROM members WHERE id=?";

        try{
            connection = getConnection();
            pstmt = connection.prepareStatement(query);
            pstmt.setString(1,id);
            set = pstmt.executeQuery();

            if (set.next()) {
                ri=MemberDao.MEMBER_EXISTENT;
            }else{
                ri=MemberDao.MEMBER_NONEXISTENT;
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            try{
                set.close();
                pstmt.close();
                connection.close();
            }catch (Exception e2){
                e2.printStackTrace();
            }
        }

        return ri;
    }

    public int userCheck(String id, String pw){
        int ri=0;
        String abPw;

        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet set = null;

        String query = "SELECT pw FROM members WHERE id=?";

        try{
            connection = getConnection();
            pstmt = connection.prepareStatement(query);
            pstmt.setString(1,id);
            set = pstmt.executeQuery();

            if (set.next()) {
                abPw = set.getString("pw");
                if(pw.equals(abPw)){
                    ri=MemberDao.MEMBER_LOGIN_SUCCESS; // 로그인 OK 1
                }else{
                    ri=MemberDao.MEMBER_LOGIN_PW_NO_GOOD; // 비번 틀림
                }
            }else{
                ri=MemberDao.MEMBER_LOGIN_IS_NOT; // 회원이 아닌 경우
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            try{
                set.close();
                pstmt.close();
                connection.close();
            }catch (Exception e2){
                e2.printStackTrace();
            }
        }

        return ri;
    }

    public MemberDto getMember(String id){
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet set = null;
        MemberDto dto = null;

        String query = "SELECT pw FROM members WHERE id=?";

        try{
            connection = getConnection();
            pstmt = connection.prepareStatement(query);
            pstmt.setString(1,id);
            set = pstmt.executeQuery();

            if (set.next()) {
                dto = new MemberDto();
                dto.setPw(set.getString("pw"));
                dto.setName(set.getString("name"));
                dto.setEmail(set.getString("pw"));
                dto.setrDate(set.getTimestamp("rDate"));
                dto.setAddress(set.getString("address"));
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            try{
                if(set != null)
                    set.close();
                if(pstmt != null)
                    pstmt.close();
                if(connection != null)
                    connection.close();
            }catch (Exception e2){
                e2.printStackTrace();
            }
        }

        return dto;
    }

    public int updateMember(MemberDto dto){
        int ri=0;

        Connection connection = null;
        PreparedStatement pstmt = null;


        String query = "UPDATE members SET pw=?, email=?, address=? where id=?";

        try{
            connection = getConnection();
            pstmt = connection.prepareStatement(query);
            pstmt.setString(1, dto.getPw());
            pstmt.setString(2, dto.getEmail());
            pstmt.setString(3, dto.getAddress());
            pstmt.setString(4, dto.getId());

            ri = pstmt.executeUpdate();
            System.out.println("ri="+ri);

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            try{
                if(pstmt != null)
                    pstmt.close();
                if(connection != null)
                    connection.close();
            }catch (Exception e2){
                e2.printStackTrace();
            }
        }

        return ri;
    }



    private Connection getConnection(){

        Context context = null;
        DataSource dataSource = null;
        Connection connection = null;

        try{
            context = new InitialContext();
            dataSource = (DataSource)context.lookup("java:comp/env/jdbc/Oracle11g");
            connection = dataSource.getConnection();
        }catch(Exception e) {
            e.printStackTrace();
        }

        return connection;
    }

}
