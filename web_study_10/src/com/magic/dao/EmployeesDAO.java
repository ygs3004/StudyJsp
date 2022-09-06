package com.magic.dao;

import com.magic.dto.EmployeesVO;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EmployeesDAO {

    private EmployeesDAO() {

    }

    private static EmployeesDAO instance = new EmployeesDAO();

    public static EmployeesDAO getInstance() {
        return instance;
    }

    public Connection getConnection() {
        Connection conn = null;
        Context initContext = null;

        try {
            initContext = new InitialContext();
            DataSource dataSource = (DataSource) initContext.lookup("java:/comp/env/jdbc/Oracle11g");
            conn = dataSource.getConnection();
        } catch (NamingException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return conn;
    }

    public int userCheck(String userid, String pwd, String lev) {
        int result = 1;
        Connection conn = null;
        String sql = "SELECT * FROM employees WHERE id=?";
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            conn = getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userid);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                if (pwd.equals(rs.getString("pass"))) {
                    if (lev.equals(rs.getString("lev"))) {
                        result = 2; // 관리자로 로그인
                        if (lev.equals("B")) {
                            result = 3;// 일반 회원으로 로그인
                        }
                    } else {
                        result = 1; // 레벨 불일치 로그인 실패
                    }
                } else {
                    result = 0; // 비밀번호 불일치 로그인 실패
                }
            } else {
                result = -1; //아이디 불일치 로그인실패
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null)
                    rs.close();
                if (pstmt != null)
                    pstmt.close();
                if (conn != null)
                    conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return result;
    }

    public EmployeesVO getMember(String id) {
        EmployeesVO member = null;

        Connection conn = null;
        String sql = "SELECT * FROM employees WHERE id=?";
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            conn = getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);

            rs = pstmt.executeQuery();

            if (rs.next()) {
                member = new EmployeesVO();
                member.setId(rs.getString("id"));
                member.setPass(rs.getString("pass"));
                member.setName(rs.getString("name"));
                member.setLev(rs.getString("lev"));
                member.setPhone(rs.getString("phone"));
                member.setEnter(rs.getDate("enter"));
                member.setGender(rs.getInt("gender"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null)
                    rs.close();
                if (pstmt != null)
                    pstmt.close();
                if (conn != null)
                    conn.close();
            } catch (Exception e) {
                e.printStackTrace();
                ;
            }
        }

        return member;
    }

    public void insertMember(EmployeesVO member) {

        Connection conn = null;
        String sql = "INSERT INTO employees VALUES(?,?,?,?,SYSDATE,?,?)";
        PreparedStatement pstmt = null;

        try {
            conn = getConnection();
            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, member.getId());
            pstmt.setString(2, member.getPass());
            pstmt.setString(3, member.getName());
            pstmt.setString(4, member.getLev());
            pstmt.setInt(5, member.getGender());
            pstmt.setString(6, member.getPhone());

            pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public int updateMember(EmployeesVO eVo) {
        int result = -1;

        Connection conn = null;
        String sql = "UPDATE employees SET gender=?, pass=?, name=?, lev=?, phone=? WHERE id=?";
        PreparedStatement pstmt = null;

        try{
            conn = getConnection();
            pstmt = conn.prepareStatement(sql);

            pstmt.setInt(1, eVo.getGender());
            pstmt.setString(2, eVo.getPass());
            pstmt.setString(3, eVo.getName());
            pstmt.setString(4, eVo.getLev());
            pstmt.setString(5, eVo.getPhone());
            pstmt.setString(6, eVo.getId());
            pstmt.executeUpdate();

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            try{
                if(pstmt != null)
                    pstmt.close();
                if(conn != null)
                    conn.close();
            }catch (SQLException e){
                e.printStackTrace();
            }
        }

        return result;
    }
}
