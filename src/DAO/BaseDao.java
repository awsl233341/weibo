package DAO;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;
import com.mysql.cj.jdbc.Driver;

public class BaseDao {
    private static String url = "jdbc:mysql://127.0.0.1:3306/weibo?serverTimezone=GMT-8";
    private static String username = "root";
    private static String password = "root";
    private static String driver="com.mysql.cj.jdbc.Driver";

    static {

    }

    static PreparedStatement pstmt = null;
    static Connection conn = null;
    static ResultSet rs=null;

    public Connection getConn() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            return conn;
        }
    }

    public void CloseAll(Connection conn, PreparedStatement pstat, ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
            if (pstat != null) {
                pstat.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public int exceuteUpd(String sql, Object[] param) {
        conn = getConn();
        int num = 0;
        try {
            pstmt = conn.prepareStatement(sql);
            if (param != null) {
                for (int i = 0; i < param.length; i++) {
                    pstmt.setObject(i + 1, param[i]);
                }
            }
            num = pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            CloseAll(conn, pstmt, null);
        }
        return num;
    }

    public ResultSet executeQuery(String sql, Object [] param){
        conn=getConn();
        try {
            pstmt=conn.prepareStatement(sql);
            for (int i = 0; i < param.length; i++) {
                pstmt.setObject(i+1,param[i]);
            }
            rs=pstmt.executeQuery();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            CloseAll(conn,pstmt,rs);
        }
        return rs;
    }


}




