package Servlet;

import Entity.Blog;
import Entity.User;
import Service.BlogService;
import Service.FollowService;
import Service.impl.BlogServiceImpl;
import Service.impl.FollowServiceImpl;
import a.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;

@WebServlet(name = "BlogServlet",urlPatterns = "/BlogServlet")
public class BlogServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        BlogService blogService = new BlogServiceImpl();
        FollowService followService =new FollowServiceImpl();
        Integer uid =((User)session.getAttribute("user")).getId();
        session.setAttribute("blogCount",blogService.getBlogCount(uid));
        session.setAttribute("followerCount",followService.getFollowedCount(uid));
        session.setAttribute("fansCount",followService.getFanCount(uid));

        try{
            String pageIndex=request.getParameter("pageIndex");
            if (pageIndex==null || (pageIndex=pageIndex.trim()).length() == 0){
                pageIndex="1";
            }
            int currPageNo = Integer.parseInt(pageIndex);
            if (currPageNo<1){
                currPageNo=1;
            }
            Page page = new Page();
            System.out.println(currPageNo);
            page.setCurrPageNo(currPageNo);
            page.setPageSize(5);
            blogService.getBlogs(uid,"",page);
            List<Blog> list =page.getBlogs();
            request.setAttribute("blogList",list);
            request.setAttribute("page",page);
            request.getRequestDispatcher("./home/mywb.jsp").forward(request,response);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        doGet(req,resp);
    }
}
