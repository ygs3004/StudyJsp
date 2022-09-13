package com.seoil.dao;

import com.seoil.dto.MovieVO;
import util.DBManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MovieDAO {

    private MovieDAO() {
        super();
    }

    private static MovieDAO instance = new MovieDAO();

    public static void setInstance(MovieDAO instance) {
        MovieDAO.instance = instance;
    }

    public static MovieDAO getInstance() {
        return instance;
    }

    public ArrayList<MovieVO> selectAllMovie() {
        String sql = "SELECT * FROM movie ORDER BY code DESC";
        ArrayList<MovieVO> productList = new ArrayList<>();

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            conn= DBManager.getConnection();
            pstmt=conn.prepareStatement(sql);
            rs=pstmt.executeQuery();

            while(rs.next()){
                MovieVO mvo = new MovieVO();
                mvo.setCode(rs.getInt("code"));
                mvo.setTitle(rs.getString("title"));
                mvo.setPrice(rs.getInt("price"));
                mvo.setDirector(rs.getString("director"));
                mvo.setActor(rs.getString("actor"));
                mvo.setPoster(rs.getString("poster"));
                mvo.setSynopsis(rs.getString("synopsis"));

                productList.add(mvo);
            }

        } catch (Exception e) {
            e.printStackTrace();

        } finally {
            DBManager.close(rs, pstmt, conn);
        }

        return productList;
    }

    public void insertMovie(MovieVO mvo){
        String sql = "INSERT INTO movie VALUES(movie_seq.nextval, ?, ?, ?, ?, ?, ?)";

        Connection conn = null;
        PreparedStatement pstmt = null;

        try{
            conn = util.DBManager.getConnection();
            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, mvo.getTitle());
            pstmt.setInt(2, mvo.getPrice());
            pstmt.setString(3, mvo.getDirector());
            pstmt.setString(4, mvo.getActor());
            pstmt.setString(5, mvo.getPoster());
            pstmt.setString(6, mvo.getSynopsis());

            pstmt.executeUpdate();

        }catch (Exception e){
            e.printStackTrace();

        }finally {
            util.DBManager.close(pstmt, conn);
        }
    }

    public MovieVO selectProductByCode(int code){
        MovieVO mvo = null;
        String sql = "SELECT * FROM movie WHERE code = ?";

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try{
            conn = util.DBManager.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, code);
            rs = pstmt.executeQuery();

            if(rs.next()){
                mvo = new MovieVO();
                mvo.setCode(rs.getInt("code"));
                mvo.setTitle(rs.getString("title"));
                mvo.setPrice(rs.getInt("price"));
                mvo.setDirector(rs.getString("director"));
                mvo.setActor(rs.getString("actor"));
                mvo.setPoster(rs.getString("poster"));
                mvo.setSynopsis(rs.getString("synopsis"));
            }

        }catch(Exception e){
            e.printStackTrace();
        }finally {
            util.DBManager.close(rs, pstmt, conn);
        }

        return mvo;
    }

    public void deleteMovie(int code){

        String sql="DELETE FROM movie WHERE code = ?";
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = util.DBManager.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, code);
            pstmt.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }finally {
            util.DBManager.close(pstmt, conn);
        }

    }

    public void updateProduct(MovieVO mvo){

        Connection conn = null;
        PreparedStatement pstmt = null;
        String sql = "UPDATE movie SET title=?, price=?, director=?, actor=?, poster=?, synopsis=? WHERE code=?";

        try{
            conn = DBManager.getConnection();
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1, mvo.getTitle());
            pstmt.setInt(2, mvo.getPrice());
            pstmt.setString(3, mvo.getDirector());
            pstmt.setString(4, mvo.getActor());
            pstmt.setString(5, mvo.getPoster());
            pstmt.setString(6, mvo.getSynopsis());
            pstmt.setInt(7, mvo.getCode());
            pstmt.executeUpdate();

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            util.DBManager.close(pstmt, conn);
        }
    }

}
