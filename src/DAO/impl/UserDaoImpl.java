package DAO.impl;

import DAO.BaseDao;
import DAO.UserDao;
import Entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImpl extends BaseDao implements UserDao {

    @Override
    public User findUser(String userId, String password) {
        ResultSet rs= null;
        User user=null;
        PreparedStatement pstmt = null;
        Connection conn =null;
        String sql="select * from user where userId=? and password=?";
        try {
            conn=getConn();
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,userId);
            pstmt.setString(2,password);
            rs=pstmt.executeQuery();
            if (rs.next()){
                user=new User();
                user.setId(rs.getInt("id"));
                user.setUserId(rs.getString("userId"));
                user.setPassword(rs.getString("password"));
                user.setNickname(rs.getString("nickname"));
                user.setImage(rs.getString("image"));
                user.setAddress(rs.getString("address"));
                user.setSign(rs.getString("sign"));
                user.setMysite(rs.getString("mysite"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            CloseAll(conn,pstmt,rs);
        }
        return user;
    }

    @Override
    public int updUserImg(String path, int id) {
        String sql="update set user image = ? where id = ?";
        Object[] ob ={path,id};
        int num=exceuteUpd(sql,ob);
        return num;
    }
}
