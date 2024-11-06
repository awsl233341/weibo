package DAO.impl;

import DAO.BaseDao;
import DAO.BlogDao;
import Entity.Blog;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BlogDaoImpl extends BaseDao implements BlogDao {
    PreparedStatement pstmt=null;
    Connection conn = null;
    @Override
    public int getBlogCount(int uid) {
        int a=0;
        ResultSet rs=null;
        String sql="select COUNT(*) as num from blog where uid=?";
        try {
            conn=getConn();
            pstmt=conn.prepareStatement(sql);
            pstmt.setInt(1,uid);
            rs= pstmt.executeQuery();
            if (rs.next()){
                a= rs.getInt("num");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            CloseAll(conn,pstmt,rs);
        }
        return a;
    }
    @Override
    public int delBlog(int id) {
        String sql = "delete from blog where id = ?";
        Object[] ob = {id};
        int a =exceuteUpd(sql,ob);
        return a;
    }

    @Override
    public List<Blog> getBlogsByPage(int uid, String keyword, int pageNo, int pageSize) {
        List<Blog> list =new ArrayList<Blog>();
        Blog blog = null;
        ResultSet rs=null;
        if (pageNo<1){
            pageNo=1;
        }
        String sql ="SELECT * FROM blog WHERE uid=? ORDER BY time DESC LIMIT ? , ?";
        conn=getConn();
        try {
            pstmt=conn.prepareStatement(sql);
            pstmt.setInt(1,uid);
            pstmt.setInt(2,(pageNo - 1) * pageSize);
            pstmt.setInt(3,pageSize);
            rs=pstmt.executeQuery();
            if (rs!=null){
                while (rs.next()){
                    blog=new Blog();
                    blog.setId(rs.getInt("id"));
                    blog.setUid(rs.getInt("uid"));
                    blog.setContent(rs.getString("content"));
                    blog.setImages(rs.getString("images"));
                    blog.setTime(rs.getString("time"));
                    blog.setState(rs.getInt("state"));
                    list.add(blog);
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
