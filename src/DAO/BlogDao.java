package DAO;

import Entity.Blog;

import java.util.List;

public interface BlogDao {
    public int getBlogCount(int uid);
    public List<Blog> getBlogsByPage(int uid, String keyword, int pageNo, int pageSize);
    public int delBlog(int id);
}
