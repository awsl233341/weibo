<%--
  Created by IntelliJ IDEA.
  User: 杜二磊
  Date: 2024/10/21
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册人数</title>
</head>
<body>
<%
    Integer regCount = (Integer) application.getAttribute("count");
    if (regCount!=null){
        regCount++;
    }else {
        regCount=1;
    }
    application.setAttribute("count",regCount);
%>
您是本站第<%=regCount%>个注册的用户
</body>
</html>
