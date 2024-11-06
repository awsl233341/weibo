package Servlet;

import Entity.User;
import Service.UserService;
import Service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.websocket.Session;
import java.io.IOException;

@WebServlet(name = "LoginServlet",urlPatterns = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String Uid=request.getParameter("userId");
        String pwd=request.getParameter("passWord");
        HttpSession session = request.getSession();
        String  checkboxes [] =request.getParameterValues("checkbox");
        boolean a =false;
        if (checkboxes!=null&&checkboxes.length==1){
            a=true;
        }
        UserService userService=new UserServiceImpl();
        User user =userService.findUser(Uid, pwd);
        if (user!=null){
            session.setAttribute("user",user);
            session.setMaxInactiveInterval(60*60);
            if (a){
                Cookie c1 =new Cookie("Uid",Uid);
                Cookie c2 =new Cookie("pwd",pwd);
                c1.setMaxAge(60*60*24);
                c2.setMaxAge(60*60*24);
                response.addCookie(c1);
                response.addCookie(c2);
            }else {
                Cookie [] cs = request.getCookies();
                for (int i = 0; i < cs.length; i++) {
                    if (cs[i].getName().equals("Uid")){
                        cs[i].setMaxAge(0);
                        response.addCookie(cs[i]);
                    }
                    if (cs[i].getName().equals("pwd")){
                        cs[i].setMaxAge(0);
                        response.addCookie(cs[i]);
                    }
                }
            }
            response.sendRedirect("home/customerindex.jsp");
        }else {
            response.sendRedirect("login.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        doGet(req,resp);
    }
}
