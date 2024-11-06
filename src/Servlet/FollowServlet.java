package Servlet;

import Entity.User;
import Service.FollowService;
import Service.impl.FollowServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FollowServlet",urlPatterns = "/FollowServlet")
public class FollowServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        FollowService followService =new FollowServiceImpl();
        Integer uid =((User)session.getAttribute("user")).getId();
        List<User> list = followService.followedList(uid);
        session.setAttribute("followedList",list);
        request.getRequestDispatcher("home/friend.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        doGet(req,resp);
    }
}
