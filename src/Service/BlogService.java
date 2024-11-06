package Service;

import Entity.Blog;
import a.Page;

import java.util.List;

public interface BlogService {
    public int getBlogCount(int uid);
    public void getBlogs(int uid, String keyword, Page page);
    public Boolean delBlog(int id);
}
