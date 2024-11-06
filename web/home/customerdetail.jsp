<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>凤凰网微博-点滴生活，精彩世界</title>
<link href="styles/detail.css" type="text/css" rel="stylesheet" />
<link href="styles/global.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="script/jquery-1.6.2.min.js"></script>
<script type="text/javascript" src="script/trim.js" ></script>
<script src="script/detail.js" type="text/javascript"></script>
</head>

<body>
<!-- 总容器 container开 始-->
<div id="container">
    <!-- topDIV 开始 -->
    <div id="top">
      <!-- top部分的LogoDIV -->
    	<div id="topLogo">
        	<!-- topLogo部分的icoDIV -->
            <div id="topLogoIco"> <a href="customerindex.jsp"><img src="images/logo.png" width="177" height="72" alt="" /></a>
          </div>
            <!-- topLogo部分的icoDIV结束 -->
        </div>
        <!-- top部分的LogoDIV结束 -->
        
        <!-- top部分的文字导航 -->
        <div id="topWordMenu">
        	<ul>
            	<li><a href="customerindex.jsp">首页</a></li>
                <li><a href="mywb.jsp">我的微博</a></li>
                <li><a href="setting.jsp">设置</a></li>
                <li><a href="#">帮助</a></li>
                <li><a href="index.jsp">退出</a></li>
            </ul>
        </div>
        <!-- top部分的文字导航结束 -->
    </div>
    <!-- topDIv 结束-->
    <!-- 内容总容器 mainDIV 开 始-->
<div id="main">
		<!-- 左侧mainBannerDIV 开始 -->
      	<div id="mainBanner">
            <!--微博详情-->
            <div id="mainBannerContent">
                <div class="stateShow" onmouseover="stateMouseOver(this)" onmouseout="stateMouseOut(this)">
                    <div class="stateShowWord">
                        <table width="450" border="0" cellpadding="0" cellspacing="0" class="stateTable">
                            <tr>
                                <td width="70" align="center" valign="top"><a href="#"><img src="images/mainBannerContent2People1Img.gif" width="54" height="54" alt="" title=""></a></td>
                                <td width="380"><a href="#">DarkDemon</a><img src="images/1.gif" style="border:none;vertical-align:middle;" alt=""/>
                                    <div>【真相】 XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="stateImgShow"><img src="images/SCT.gif" width="34" height="166" alt="" title="" /></div>
                    <div class="stateShowtime"> 07月31日 08:02 </div>
                    <div class="stateOp"><a onclick="reXianShi(this,1)" class="opDone" href="#">回复 100</a><a href="#" class="opState" onclick="changeOpState(this)">赞 100</a><a href="#" class="opState" onclick="delState(this)">删除</a></div>
                    <div class="huifu">
                        <div class="stateRshow">
                            <div class="stateRshowWord">
                                <table width="380" border="0" cellpadding="0" cellspacing="0" class="stateTable">
                                    <tr><td width="70" align="center" valign="top"><a href="#"><img src="images/MainRightFirstLineTitle.gif" alt="" width="48" height="48"></a></td>
                                        <td width="310"><a href="#">DarkDemon</a><img src="images/1.gif" style="vertical-align:middle;border:none;" alt=""/>&nbsp;@开心段子&nbsp;&nbsp;你也是够了</td>
                                    </tr>
                                </table>
                            </div>
                            <div class="stateRimgShow"></div>
                            <div class="stateRshowtime">  10月16日 14:59 </div>
                            <div class="stateOp"><a onclick="reXianShi(this,1)" class="opState" href="#">回复 100</a><a href="#" class="opDone" onclick="changeOpState(this)">赞 100</a><a class="opState" onclick="delState(this)" href="#">删除</a></div>
                        </div>
                        <div class="stateRshow">
                            <div class="stateRshowWord">
                                <table width="380" border="0" cellpadding="0" cellspacing="0" class="stateTable">
                                    <tr><td width="70" align="center" valign="top"><a href="#"><img src="images/MainRightFirstLineTitle.gif" alt="" width="48" height="48"></a></td>
                                        <td width="310"><a href="#">漂流瓶</a><img src="images/1.gif" style="vertical-align:middle;border:none;" alt=""/>&nbsp;@DarkDemon&nbsp;&nbsp;你说得也太好了</td>
                                    </tr>
                                </table>
                            </div>
                            <div class="stateRimgShow"></div>
                            <div class="stateRshowtime">  10月16日 14:59 </div>
                            <div class="stateOp"><a onclick="reXianShi(this,1)" class="opState" href="#">回复 100</a><a href="#" class="opState" onclick="reXianShi(this,2)">转发 100</a><a href="#" class="opState" onclick="changeOpState(this)">赞 100</a><a class="opState" onclick="delState(this)" href="#">删除</a></div>
                        </div>
                        <div class="stateRshow">
                            <div class="stateRshowWord">
                                <table width="380" border="0" cellpadding="0" cellspacing="0" class="stateTable">
                                    <tr><td width="70" align="center" valign="top"><a href="#"><img src="images/MainRightFirstLineTitle.gif" alt="" width="48" height="48"></a></td>
                                        <td width="310"><a href="#">开心段子</a><img src="images/1.gif" style="vertical-align:middle;border:none;" alt=""/>&nbsp;@DarkDemon&nbsp;&nbsp;快表扬我</td>
                                    </tr>
                                </table>
                            </div>
                            <div class="stateRimgShow"></div>
                            <div class="stateRshowtime">  10月16日 14:58 </div>
                            <div class="stateOp"><a onclick="reXianShi(this,1)" class="opDone" href="#">回复 100</a><a href="#" class="opState" onclick="reXianShi(this,2)">转发 100</a><a class="opDone" onclick="changeOpState(this)" href="#">赞 100</a><a class="opState" onclick="delState(this)" href="#">删除</a></div>
                        </div>
                        <div class="stateRshow">
                            <div class="stateRshowWord">
                                <table width="380" border="0" cellpadding="0" cellspacing="0" class="stateTable">
                                    <tr><td width="70" align="center" valign="top"><a href="#"><img src="images/MainRightFirstLineTitle.gif" alt="" width="48" height="48"></a></td>
                                        <td width="310"><a href="#">开心段子</a><img src="images/1.gif" style="vertical-align:middle;border:none;" alt=""/>&nbsp;@DarkDemon&nbsp;&nbsp;消灭零回复 100</td></tr>
                                </table>
                            </div>
                            <div class="stateRimgShow"></div>
                            <div class="stateRshowtime">  10月16日 14:58 </div>
                            <div class="stateOp"><a onclick="reXianShi(this,1)" class="opState" href="#">回复 100</a><a href="#" class="opState" onclick="reXianShi(this,2)">转发 100</a><a class="opDone" onclick="changeOpState(this)" href="#">赞 100</a><a class="opState" onclick="delState(this)" href="#">删除</a></div>
                        </div>
                    </div>
                </div>
                <!--回复 100DIV-->
                <div id="recieve">
                    <div id="ff1" style="float:left;"><span style="font-size:16px; color:#FDFDFD"><label for="ta1">&nbsp;&nbsp;&nbsp;&nbsp;回&nbsp;&nbsp;复</label></span></div>
                    <div id="left" style="float:right; margin-top:10px; color:#FFF; margin-right:10px;">您还有可以输入<span id="counter1" style="color:#ffffff;">140</span>字！&nbsp;&nbsp;&nbsp;<img src="images/hongcha1.gif" alt="" width="14" height="13" style="vertical-align: middle;" title="" onclick="windowClose(this)" /></div><br />
                    <div id="wt1">
                        <form action="" method="get">
                            <textarea name="ta" cols="" rows="" id="ta1" onkeyup="calNum(this,counter1,1)" style="overflow:hidden;border:1px #0CF solid;">
                            </textarea>
                            <br />
                            <div style="float:right; margin-right:25px; margin-top:7px; text-align:right;">
                                &nbsp;&nbsp;<input type="checkbox" name="引用原微博" value="ref"/>&nbsp;&nbsp;引用原微博
                                <input name="" type="button" value=" 回 复 " id="sub1" onclick="submitRstate()" />
                            </div>
                        </form>
                    </div>
                </div>
                <!-- 回复 100DIV 结束 -->
                <!--转发 100DIV-->
                <div id="forward">
                    <div id="ff2" style="float:left;"><span style="font-size:16px; color:#FDFDFD"><label for="ta1">&nbsp;&nbsp;&nbsp;&nbsp;转发 100到微博</label></span></div>
                    <div id="left" style="float:right; margin-top:10px; color:#FFF; margin-right:10px;">您还有可以输入<span id="counter2" style="color:#ffffff;">140</span>字！&nbsp;&nbsp;&nbsp;<img src="images/hongcha1.gif" alt="" width="14" height="13" style="vertical-align: middle;" title="" onclick="windowClose(this)" /></div><br />
                    <div id="wt2">
                        <form action="" method="get">
                            <textarea name="ta" cols="" rows="" id="ta2" onkeyup="calNum(this,counter2,1)" style="overflow:hidden;border:1px #0CF solid;">
                            </textarea>
                            <br />
                            <div style="float:right; margin-right:25px; margin-top:7px; text-align:right;">
                                &nbsp;&nbsp;<input type="checkbox" name="评论原微博" value="rep"/>&nbsp;&nbsp;同时评论给原微博
                                <input name="" type="button" value=" 转 发 " id="sub2" onclick="submitFstate()" />
                            </div>
                        </form>
                    </div>
                </div>
                <!-- 转发 100DIV 结束 -->
            </div>
             <!--微博详情结束-->
        </div>
        <!-- 左侧mainBannerDIV 结束 -->                       
        <!-- 右侧mainRight DIV开始 -->
        <div id="mainRight">
            <div id="mainRight1">
                <!-- 右侧mainRightPostionFirstLine DIV 开始 -->
                <div id="mainRightPostionFirstLine">
                    <!-- 右侧mainRightPostionFirstLineIcon DIV 开始 -->
                    <div id="mainRightPostionFirstLineIcon">
                        <a href="#"><img src="images/MainRightFirstLineTitle.gif" alt="" width="48" height="48" style="vertical-align: middle;border: none;" title="" /></a>
                    </div>
                    <!-- 右侧mainRightPostionFirstLineIcon DIV 结束 -->
                    <!-- 右侧mainRightPostionFirstLineWord1 DIV 开始 -->
                    <div id="mainRightPostionFirstLineWord1">
                        &nbsp;<span style="color: #005DC3;"><b><a href="mywb.jsp" class="a1">DarkDemon</a></b></span><br />
                        &nbsp;天津&nbsp;&nbsp;河西区
                    </div>
                    <!-- 右侧mainRightPostionFirstLineWord1 DIV 结束 -->
                    <!-- 右侧mainRightPostionFirstLineWord2 DIV 开始 -->
                    <div id="mainRightPostionFirstLineWord2">
                        <ul id="ul1">
                            <li><a href="mywb.jsp" class="a1"><span class="style1">2</span><br /><span class="style2">微博</span></a></li>
                            <li><a href="friend.jsp" class="a1"><span class="style1">12</span><br /><span class="style2">关注</span></a></li>
                            <li><a href="focusonyou.jsp" class="a1"><span class="style1">23</span><br /><span class="style2">粉丝</span></a></li>
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
  <div id="footer">
   	  <!-- footer网站链接部分 -->
   	  <div id="footerLink">      
          <ul>
           	  <li><a href="#" class="a2">介绍</a></li>
              <li><a href="#" class="a2">广告服务</a></li>
              <li><a href="#" class="a2">API</a></li>
              <li><a href="#" class="a2">诚征英才</a></li>
              <li><a href="#" class="a2">保护隐私权</a></li>
              <li><a href="#" class="a2">免责条款</a></li>
              <li><a href="#" class="a2">法律顾问</a></li>
              <li><a href="#" class="a2">意见反馈</a></li>
          </ul>
      </div>
      <!-- footer网站链接部分结束 -->
      <!-- footer网站版权信息 -->
      <div id="footerCopy">
       	  Copyright&copy;2011-2012 版权所有
      </div>
      <!-- footer网站版权信息结束 -->
  </div>
  <!-- footer部分结束 --> 
</div>
<!--总容器 container结束-->
<p id="backtop"><a id="backtop1" href="#totop"><span>回到顶部</span></a></p>
</body>
</html>
