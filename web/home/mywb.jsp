<%@ page import="Entity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="Entity.Blog" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="a.Page" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>凤凰网微博-点滴生活，精彩世界</title>
<%
    String path= request.getContextPath();
%>
<link href="<%=path%>/home/styles/mywb.css" type="text/css" rel="stylesheet">
<link href="<%=path%>/home/styles/global.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="script/jquery-1.6.2.min.js"></script>
<script type="text/javascript" src="script/trim.js" ></script>
<script type="text/javascript" src="script/detail.js" ></script>
</head>

<body>
<%
    User user =(User) session.getAttribute("user");
    Page pageObj =(Page) request.getAttribute("page");
    Integer blogCount =(Integer) session.getAttribute("blogCount");
    Integer followerCount=(Integer) session.getAttribute("followerCount");
    Integer fansCount=(Integer) session.getAttribute("fansCount");
%>
<!-- 总容器 container开 始-->
<div id="container">
    <!-- topDIV 开始 -->
    <%@include file="top.jsp"%>
    <!-- topDIv 结束-->
    <!-- 内容总容器 mainDIV 开 始-->
<div id="main">
		<!-- 左侧mainBannerDIV 开始 -->
      	<div id="mainBanner">
            <!-- 左侧mainBannerTopDIV 开始 -->
            <div id="mainBannerTop">
                <!-- 左侧mainBannerTopImgDIV 开始 -->
                <div id="mainBannerTopImg">
                    <img src="<%=user.getImage()%>" width="95px" height="97px">
                </div>
            	<!-- 左侧mainBannerTopImgDIV 结束 -->
                <!-- 左侧mainBannerToWordDIV 开始 -->
                <div id="mainBannerTopWord"><span style="color: #330000"><b><%=user.getNickname()%></b></span><br />
                <a href="#"><%=user.getMysite()%></a>
                </div>
            	<!-- 左侧mainBannerTopWordDIV 结束 -->
            </div>
            <!-- 左侧mainBannerTopDIV 结束 -->
            <!-- 左侧mainBannerMenuDIV 开始 -->
            <div id="mainBannerMenu">
                <!-- 左侧mainBannerMenuTopDIV 开始 -->
                <div id="mainBannerMenuTop">
                    <!-- 左侧mainBannerMenuTopWord1DIV 开始 -->
                    <div id="mainBannerMenuTopWord1"><b>我自己</b>
                        </div>
                    <!-- 左侧mainBannerMenuTopWord1DIV 结束-->
                    <!-- 左侧mainBannerMenuTopWord2DIV 开始 -->
                    <div id="mainBannerMenuTopWord2">
                        <form id="form2" name="form2" method="post" action="">
                            <a href="customerindex.jsp"><img src="images/mainBannerMenuTopWord2.gif" title="" alt="" />发微博</a>
                            <div id="search">
                                <input type="text" name="textfield2" id="textfield2" />
                                <img src="images/sousuo1.gif" alt="" width="27" height="25" style="vertical-align: middle;" />
                            </div>
                        </form>
                    </div>
                    <!-- 左侧mainBannerMenuTopWord2DIV 结束 -->
                </div>
            	<!-- 左侧mainBannerMenuTopDIV 结束-->
            </div>
            <!-- 左侧mainBannerMenu DIV 结束-->
            <!--自己发微博的地方-->
            <div id="mainBannerContent">
                <%
                    List<Blog> blogList = (ArrayList<Blog>) session.getAttribute("blogList");
                    for (Blog blog : blogList){
                %>
                <!--个人展示，自己发表的-->
                <div class="stateShow" onmouseover="stateMouseOver(this)" onmouseout="stateMouseOut(this)" >
                    <div class="stateShowWord">
                        <table width="450" border="0" cellpadding="0" cellspacing="0" class="stateTable">
                            <tr>
                                <td width="70" align="center" valign="top"><a href="#"><img src="<%=user.getImage()%>" alt="" width="48" height="48"></a></td>
                                <td width="380"><a href="#"><%=user.getNickname()%></a><img src="images/1.gif" style="border:none;vertical-align:middle;" alt="">&nbsp;<%=blog.getContent()%></td>
                            </tr>
                        </table>
                    </div>
                    <div class="stateImgShow"><img src="<%=blog.getImages()%>"> </div>
                    <div class="stateShowtime"><%=blog.getTime()%></div>
                    <div class="stateOp">
                        <a class="opState" onclick="javascript:;" href="#">回复 100</a>
                        <a class="opState" href="#">转发 100</a>
                        <a class="opState" onclick="" href="#">赞 100</a>
                        <a onclick="javascript:if (confirm('确认要删除吗？')){
                            this.href='delete_blog.jsp?opr=delete&id=<%=blog.getId()%>'
                        }" class="opState">删除</a>
                    </div>
                    <div class="huifu"></div>
                </div>
                <!--个人展示结束-->
            </div>
            <%
                }
            %>
            <p align="center">
                当前页数：[<%=pageObj.getCurrPageNo()%>/<%=pageObj.getTotalPageCount()%>]&nbsp;
                <%
                    if (pageObj.getCurrPageNo()>1){
                %>
                <a href="/BlogServlet?pageIndex=1">首页</a>&nbsp;
                <a href="/BlogServlet?pageIndex=<%=pageObj.getCurrPageNo()-1%>">上一页</a>&nbsp;
                <%
                    }
                    if (pageObj.getCurrPageNo()<pageObj.getTotalPageCount()){
                %>
                <a href="/BlogServlet?pageIndex=<%=pageObj.getCurrPageNo()+1%>">下一页</a>&nbsp;
                <a href="/BlogServlet?pageIndex=<%=pageObj.getTotalPageCount()%>">末页</a>
                <%}%>
            </p>
             <!--自己发微博的地方结束-->
        </div>
        <!-- 左侧mainBannerDIV 结束 -->                       
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
  <!-- 内容总容器 mainDIV 结束-->
  <!-- footer部分 -->
  <%@include file="foot.jsp"%>
  <!-- footer部分结束 --> 
</div>
<!--总容器 container结束-->
<p id="backtop"><a id="backtop1" href="#totop"><span>回到顶部</span></a></p>
</body>
</html>
