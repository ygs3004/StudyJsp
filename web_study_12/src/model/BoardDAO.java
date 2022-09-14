package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class BoardDAO {
    ResultSet rs;
    Connection conn;
    PreparedStatement pstmt;

/*
    public void getCon(){
        try{
            Context initctx = new InitialContext();
            Context envctx = (Context)initctx.lookup("java:/comp/env");
            DataSource ds = (DataSource)envctx.lookup("jdbc/Oracle11g");
            conn = ds.getConnection();
            //DataSource ds = (DataSource)initContext.lookup("java:/comp/env/jdbc/Oracle11g");
        }catch(Exception e){
            e.printStackTrace();
        }
    }
*/
    public void getCon(){
        try{
            String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
            String dbID = "scott";
            String dbPassword = "tiger";
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn= DriverManager.getConnection(dbURL,dbID,dbPassword);
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public void insertBoard(BoardBean bean){

        getCon();

        int ref=0;
        int re_step=1;
        int re_level=1;

        try{
            String refsql ="SELECT MAX(ref) FROM BOARD";
            pstmt = conn.prepareStatement(refsql);
            rs = pstmt.executeQuery();

            if(rs.next()){
                ref=rs.getInt(1)+1;
            }

            String sql="INSERT INTO board VALUES(board_seq.nextval, ?, ?, ?, ?, SYSDATE, ?, ?, ?, 0, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, bean.getWriter());
            pstmt.setString(2, bean.getEmail());
            pstmt.setString(3, bean.getSubject());
            pstmt.setString(4, bean.getPassword());
            pstmt.setInt(5, ref);
            pstmt.setInt(6, re_step);
            pstmt.setInt(7, re_level);
            pstmt.setString(8, bean.getContent());

            pstmt.executeUpdate();

        }catch(Exception e){
            e.printStackTrace();
        }

    }

    public Vector<BoardBean> getAllBoard(int start, int end){
        Vector<BoardBean> vec = new Vector<>();
        getCon();

        try{
            String sql = "SELECT * FROM(SELECT A.*,ROWNUM Rnum FROM (SELECT*FROM board ORDER BY ref DESC, re_step ASC) A)"
                    +"WHERE Rnum>=? and Rnum<=?";

            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, start);
            pstmt.setInt(2, end);

            rs = pstmt.executeQuery();

            while(rs.next()){
                BoardBean bean = new BoardBean();
                bean.setNum(rs.getInt(1));
                bean.setWriter(rs.getString(2));
                bean.setEmail(rs.getString(3));
                bean.setSubject(rs.getString(4));
                bean.setPassword(rs.getString(5));
                bean.setReg_date(rs.getDate(6).toString());
                bean.setRef(rs.getInt(7));
                bean.setRe_step(rs.getInt(8));
                bean.setRe_level(rs.getInt(9));
                bean.setReadcount(rs.getInt(10));
                bean.setContent(rs.getString(11));

                vec.add(bean);
            }

        }catch (Exception e){
            e.printStackTrace();
        }

        return vec;
    }

    public BoardBean getOneBoard(int num){
        BoardBean bean = new BoardBean();
        getCon();

        try{
            String readsql = "UPDATE board SET readcount=readcount+1 WHER num=?";
            pstmt = conn.prepareStatement(readsql);
            pstmt.setInt(1, num);
            pstmt.executeUpdate();

            String sql = "SELECT * FROM board WHERE num=?";

            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1,num);

            rs=pstmt.executeQuery();

            if(rs.next()){
                bean.setNum(rs.getInt(1));
                bean.setWriter(rs.getString(2));
                bean.setEmail(rs.getString(3));
                bean.setSubject(rs.getString(4));
                bean.setPassword(rs.getString(5));
                bean.setReg_date(rs.getDate(6).toString());
                bean.setRef(rs.getInt(7));
                bean.setRe_step(rs.getInt(8));
                bean.setRe_level(rs.getInt(9));
                bean.setReadcount(rs.getInt(10));
                bean.setContent(rs.getString(11));
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return bean;
    }

    public void reWriteBoard(BoardBean bean){
        int ref = bean.getRef();
        int re_step = bean.getRe_step();
        int re_level = bean.getRe_level();

        getCon();

        try{
            String levelsql = "UPDATE board SET re_level = re_revel+1 WHERE ref=? and re_level > ?";
            //re_step 필요 없나? 체크
            pstmt = conn.prepareStatement(levelsql);
            pstmt.setInt(1, ref);
            pstmt.setInt(2, re_level);
            pstmt.executeUpdate();

            String sql="INSERT INTO board VALUES(board_seq.nextval, ?, ?, ?, ?, SYSDATE, ?, ?, ?, 0, ?)";
            pstmt.setString(1, bean.getWriter());
            pstmt.setString(2, bean.getEmail());
            pstmt.setString(3, bean.getSubject());
            pstmt.setString(4, bean.getPassword());
            pstmt.setInt(5, ref);
            pstmt.setInt(6, re_step+1);
            pstmt.setString(9, bean.getContent());

            pstmt.executeUpdate();
            conn.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public BoardBean getOneUpdateBoard(int num){
        BoardBean bean = new BoardBean();
        getCon();

        try{
            String sql = "SELECT * FROM board WHERE num=?";
            pstmt=conn.prepareStatement(sql);
            pstmt.setInt(1, num);
            rs= pstmt.executeQuery();

            if(rs.next()){
                bean.setNum(rs.getInt(1));
                bean.setWriter(rs.getString((2)));
                bean.setEmail(rs.getString(3));
                bean.setSubject(rs.getString(4));
                bean.setPassword(rs.getString(5));
                bean.setReg_date(rs.getDate(6).toString());
                bean.setRef(rs.getInt(7));
                bean.setRe_step(rs.getInt(8));
                bean.setRe_level(rs.getInt(9));
                bean.setReadcount(rs.getInt(10));
                bean.setContent(rs.getString(11));
            }

            conn.close();
        }catch(Exception e){
            e.printStackTrace();
        }

        return bean;
    }

    public String getPass(int num){
        String pass="";
        getCon();

        try{
            String sql = "SELECT password FROM board WHERE num=?";
            pstmt=conn.prepareStatement(sql);
            pstmt.setInt(1,num);
            rs = pstmt.executeQuery();

            if(rs.next()){
                pass=rs.getString(1);
            }

            conn.close();
        }catch(Exception e){
            e.printStackTrace();

        }
        return pass;
    }

    //하나의 게시글을 수정하는 메서드
    public void updateBoard(BoardBean bean){
        getCon();

        try{
            String sql = "UPDATE board SET subject=?, content=? WHERE num=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, bean.getSubject());
            pstmt.setString(2, bean.getContent());
            pstmt.setInt(3, bean.getNum());

            pstmt.executeUpdate();
            conn.close();

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public void deleteBoard(int num){
        getCon();

        try{
            String sql = "DELETE FROM board WHERE num=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, num);

            pstmt.executeUpdate();
            conn.close();;

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public int getAllCount(){
        getCon();

        int count =0;

        try{
            String sql = "SELECT COUNT(*) FROM board";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            if(rs.next()){
                count = rs.getInt(1);
            }

            conn.close();

        }catch (Exception e){
            e.printStackTrace();
        }

        return count;
    }
}