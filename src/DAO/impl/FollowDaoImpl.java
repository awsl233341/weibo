package DAO.impl;

import DAO.BaseDao;
import DAO.FollowDao;
import Entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FollowDaoImpl extends BaseDao implements FollowDao {

    @Override
    public int getFollowedCount(int uid) {
        int a=0;
        ResultSet rs=null;
        PreparedStatement pstmt=null;
        Connection conn = null;
        String sql="select COUNT(*) as num from follow where followedUid=?";
        try {
            conn=getConn();
            pstmt=conn.prepareStatement(sql);
            pstmt.setInt(1,uid);
            rs= pstmt.executeQuery();
            if (rs.next()){
                a=rs.getInt("num");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            CloseAll(null,null,rs);
        }
        return a;
    }

    @Override
    public int getFanCount(int uid) {
        int a=0;
        ResultSet rs=null;
        PreparedStatement pstmt=null;
        Connection conn = null;
        String sql="select COUNT(*) as num from follow where uid=?";
        try {
            conn=getConn();
            pstmt=conn.prepareStatement(sql);
            pstmt.setInt(1,uid);
            rs= pstmt.executeQuery();
            if (rs.next()){
                a=rs.getInt("num");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            CloseAll(null,null,rs);
        }
        return a;
    }

    @Override
    public List<User> followedList(int uid) {
        List<User> list=new ArrayList<User>();
        User user = null;
        Connection conn = null;
        PreparedStatement pstmt=null;
        ResultSet rs = null;
        String sql = "SELECT nickname, image, address FROM `user` WHERE id IN (SELECT uid FROM follow WHERE followedUid =?)";
        try {
            conn=getConn();
            pstmt=conn.prepareStatement(sql);
            pstmt.setInt(1,uid);
            rs= pstmt.executeQuery();
            if (rs!=null){
                while (rs.next()){
                    user=new User();
                    user.setNickname(rs.getString("nickname"));
                    user.setAddress(rs.getString("address"));
                    user.setImage(rs.getString("image"));
                    list.add(user);
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            CloseAll(conn,pstmt,rs);
        }
        return list;
    }

    @Override
    public List<User> fanList(int uid) {
        List<User> list=new ArrayList<User>();
        User user = null;
        Connection conn = null;
        PreparedStatement pstmt=null;
        ResultSet rs = null;
        String sql = "SELECT nickname, image, address FROM `user` WHERE id IN (SELECT followedUid FROM follow WHERE uid =?)";
        try {
            conn=getConn();
            pstmt=conn.prepareStatement(sql);
            pstmt.setInt(1,uid);
            rs= pstmt.executeQuery();
            if (rs!=null){
                while (rs.next()){
                    user=new User();
                    user.setNickname(rs.getString("nickname"));
                    user.setAddress(rs.getString("address"));
                    user.setImage(rs.getString("image"));
                    list.add(user);
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            CloseAll(conn,pstmt,rs);
        }
        return list;
    }
}
