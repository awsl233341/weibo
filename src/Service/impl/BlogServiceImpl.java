package Service.impl;

import DAO.BlogDao;
import DAO.CollectionDao;
import DAO.CommentDao;
import DAO.LikesDao;
import DAO.impl.BlogDaoImpl;
import DAO.impl.CollectionDaoImpl;
import DAO.impl.CommentDaoImpl;
import DAO.impl.LikesDaoImpl;
import Entity.Blog;
import Service.BlogService;
import a.Page;

import java.util.ArrayList;
import java.util.List;

public class BlogServiceImpl implements BlogService {
    BlogDao blogDao = new BlogDaoImpl();
    @Override
    public int getBlogCount(int uid) {
        int a = blogDao.getBlogCount(uid);
        return a;
    }

    @Override
    public void getBlogs(int uid, String keyword, Page page) {
        int totalCount=blogDao.getBlogCount(uid);
        page.setTotalCount(totalCount);
        if (totalCount>0){
            if (page.getCurrPageNo() > page.getTotalPageCount()){
                page.setCurrPageNo(totalCount);
            }
            List<Blog> blogs=blogDao.getBlogsByPage(uid,"", page.getCurrPageNo(), page.getPageSize());
            page.setBlogs(blogs);
        }else {
            page.setCurrPageNo(0);
            page.setBlogs(new ArrayList<Blog>());
        }
    }

    @Override
    public Boolean delBlog(int id) {
        Boolean del = false;
        CollectionDao collectionDao =new CollectionDaoImpl();
        CommentDao commentDao = new CommentDaoImpl();
        LikesDao likesDao = new LikesDaoImpl();
        collectionDao.delCollection(id);
        commentDao.delComment(id);
        likesDao.delLikes(id);
        int d = blogDao.delBlog(id);
        if (d>0){
            del=true;
        }
        return del;
    }
}
