package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
    String id="scott";
    String pass="tiger";
    String url="jdbc:oracle:thin:@localost:1521:XE";

    Connection conn;
    PreparedStatement pstmt;
    ResultSet rs;

    public void getcon(){
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection(url,id,pass);
            pstmt = conn.prepareStatement();
            rs = pstmt.executeQuery();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }


}