<%@ page import="Entity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>好友管理 微博-点滴生活，精彩每一天！</title>
<%
    String path= request.getContextPath();
%>
<link href="<%=path%>/home/styles/friend.css" type="text/css" rel="stylesheet">
<link href="<%=path%>/home/styles/global.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="script/jquery-1.6.2.min.js"></script>
<script type="text/javascript" src="script/trim.js" ></script>
<script type="text/javascript" src="script/detail.js" ></script>
</head>
<body>

<%
    System.out.println(path);
    request.setCharacterEncoding("UTF-8");
    User user = (User) session.getAttribute("user");
    Integer blogCount =(Integer) session.getAttribute("blogCount");
    Integer followerCount=(Integer) session.getAttribute("followerCount");
    Integer fansCount=(Integer) session.getAttribute("fansCount");
%>
<!-- 页面整体 -->
<div id="container">
       <!-- top部分DIV -->
	   <%@include file="top.jsp"%>
    <!-- top部分结束 -->

  <!-- 页面主体 -->
  <div id="main">
      <div id="mainBanner">
    <table width="765" border="0" cellpadding="0" cellspacing="0" id="tb1">
      <tr>
        <td width="21" rowspan="7" class="td1"></td>
        <td height="60" align="center" valign="middle" bgcolor="#FFFFFF" class="td2">
        <img src="images/MainRightFirstLineTitle.gif" width="48" height="48" alt="" /></td>
        <td height="60" class="td3"><span style="color: #000000; font-size: medium"><b>你关注的人(<%=followerCount%>)</b></span></td>
        <td rowspan="7" class="td1 height"></td>
      </tr>
      <tr>
        <td height="47" align="center" valign="middle" bgcolor="#e3f1fa" class="td2 font1">列表</td>
        <td height="45" align="center" valign="middle" bgcolor="#e3f1fa" class="td4 font1">
        <form id="form2" name="form2" method="post" action="">
        <div id="search">
          <input type="text" name="textfield2" id="textfield2" />
          <img src="images/sousuo1.gif" alt="" width="27" height="25" style="vertical-align: middle" />
        </div>
        </form></td>
      </tr>
        <%
            List<User> followList = (ArrayList<User>) session.getAttribute("followedList");
            for (User follow : followList){
        %>
      <tr>
        <td height="105" align="center" valign="middle" class="td2">
        <img src="<%=follow.getImage()%>" width="54" height="54" alt="" /></td>
        <td height="105" align="left" valign="bottom" class="td3"><span style="color: #005dc3; font-size: medium; font-family: 微软雅黑"><b><%=follow.getNickname()%></b></span>
        <img src="images/1.gif" width="17" height="15" alt="" />
        <br /><span style="color: #000000; font-size: small"><%=follow.getAddress()%></span>
        <br /><span style="color: #000000; font-size: small"></span>
        <div id="focus1"><img src="images/ok.png" alt="" width="16" height="16" style="vertical-align: text-top;" /> 已关注<img src="images/focus.gif" alt="" width="43" height="30" style="vertical-align: bottom;" /></div></td>
      </tr>
        <%
            }
        %>

    </table>
      </div><!--mainBanner結束-->
      <!-- 右侧mainRight DIV开始 -->
      <div id="mainRight">
          <div id="mainRight1">
              <!-- 右侧mainRightPostionFirstLine DIV 开始 -->
              <div id="mainRightPostionFirstLine">
                  <!-- 右侧mainRightPostionFirstLineIcon DIV 开始 -->
                  <div id="mainRightPostionFirstLineIcon">
                      <a href="#"><img src="<%=user.getImage()%>" alt="" width="48" height="48" style="vertical-align: middle;border: none;" title="" /></a>
                  </div>
                  <!-- 右侧mainRightPostionFirstLineIcon DIV 结束 -->
                  <!-- 右侧mainRightPostionFirstLineWord1 DIV 开始 -->
                  <div id="mainRightPostionFirstLineWord1">
                      &nbsp;<span style="color: #005DC3;"><b><a href="mywb.jsp" class="a1"><%=user.getNickname()%></a></b></span><br />
                      &nbsp;<%=user.getAddress()%>
                  </div>
                  <!-- 右侧mainRightPostionFirstLineWord1 DIV 结束 -->
                  <!-- 右侧mainRightPostionFirstLineWord2 DIV 开始 -->
                  <div id="mainRightPostionFirstLineWord2">
                      <ul id="ul1">
                          <li><a href="./BlogServlet" class="a1"><span class="style1"><%=blogCount%></span><br /><span class="style2">微博</span></a></li>
                          <li><a href="./FollowServlet" class="a1"><span class="style1"><%=followerCount%></span><br /><span class="style2">关注</span></a></li>
                          <li><a href="./FanServlet" class="a1"><span class="style1"><%=fansCount%></span><br /><span class="style2">粉丝</span></a></li>
                      </ul>
                  </div>
                  <!-- 右侧mainRightPostionFirstLineWord2 DIV 结束 -->
              </div>
              <!-- 右侧mainRightPostionFirstLine DIV 结束 -->
              <div id="mainRightPostionFifthLine">
                  <div id="mainRightPositionFifthLineContent">
                      <a href="setting.jsp" onclick="" class="a1"><span class="style4">完善个人资料</span>
                          <img src="images/rightarrow.gif" alt="" width="12" height="14" style="horiz-align: right; border: 0;" title=""/></a>
                  </div>
              </div>
              <!-- 右侧mainRightPostionSixthLine DIV 开始 -->
              <div id="mainRightPostionSixthLine">
                  <div id="mainRightPositionSixthLineContent">
                      <a href="#" onclick="" class="a1"><span class="style4">我关注的</span>
                          <img src="images/ThirdLineUpArrow.gif" alt="" width="12" height="14" style="horiz-align: right; border: 0;" title=""/></a>
                  </div>
                  <ul>
                      <li><a href="#" class="a1"><img src="images/WBXM.gif" style="border: none;" alt=""/><br /><span class="style2">微博小秘</span></a></li>
                      <li><a href="#" class="a1"><img src="images/AXXR.gif" style="border: none;" alt=""/><br /><span class="style2">&nbsp;&nbsp;转&nbsp;&nbsp;发</span></a></li>
                      <li><a href="#" class="a1"><img src="images/LBXR.gif" style="border: none;" alt=""/><br /><span class="style2">微博新人</span></a></li>
                  </ul>
              </div>
              <!-- 右侧mainRightPostionSeventhLine DIV 开始 -->
              <div id="mainRightPostionSeventhLine">
                  <div id="mainRightPositionSevenLineContent">
                      微博的成长，离不开你们。<br />
                      <span class="style2"><a href="#" class="a1">有意见要提（点击） </a><br /><br />
                    <a href="#" class="a1" onclick="set()">不良信息举报中心</a></span>
                  </div>
              </div>
              <!-- 右侧mainRightPostionSixthLine DIV 结束 -->
          </div>
      </div>
  </div>

    <!-- footer部分 -->
    <%@include file="foot.jsp"%>
    <!-- footer部分结束 -->
</div>
<p id="backtop"><a id="backtop1" href="#totop"><span>回到顶部</span></a></p>
</body>
</html>
