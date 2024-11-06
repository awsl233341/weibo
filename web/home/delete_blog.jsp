<%@ page import="Service.BlogService" %>
<%@ page import="Service.impl.BlogServiceImpl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String opr=request.getParameter("opr");
    BlogService blogService = new BlogServiceImpl();
    if (opr.equals("delete")&&opr!=null){
        int bid=Integer.parseInt(request.getParameter("id"));
        Boolean a=blogService.delBlog(bid);
        if (a){
            //response.sendRedirect("mywb.jsp");
            request.getRequestDispatcher("mywb.jsp").forward(request,response);
        }else {
%>

            <script type="text/javascript">
                alert("删除失败！");
                window.history.back(-1);
            </script>

<%
        }
    }
%>
</body>
</html>
