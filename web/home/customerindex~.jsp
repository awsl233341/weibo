﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>微博-点滴生活，精彩世界</title>
<link href="styles/global.css" type="text/css" rel="stylesheet" />
<link href="styles/customerindex.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="script/jquery-1.6.2.min.js"></script>
<script type="text/javascript" src="script/trim.js" ></script>
<script type="text/javascript" src="script/customerindex.js" ></script>
</head>

<body style="filter:alpha(opacity=100)" id="totop">
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
        	<!-- mainBannerTop DIV 开始 -->
      <div id="mainBannerTop">
            <!--id=mainBannerTopIssue 发布框-->
        <div id="mainBannerTopIssue">
                    <!--id=mainBannerTopIssuePoint 提示-->
                    <div id="mainBannerTopIssuePoint">正在发生的事情
                    </div>
                    <div style="float:right;">您还可以输入<span id="counter1">140</span>字！
                    </div>
                    <form action="" method="post" id="">
                      <div id="mainBannerTopIssueForm">
                            <!--id="mainBannerTopIssueFrame-->
                            <div id="mainBannerTopIssueFrame">
                                <label ur="textfield2"></label><textarea name="textfield1" rows="4" class="Size" id="textfield2" style="overflow:hidden;border:1px #0CF solid;" onkeyup="calNum(this,counter1,0)"></textarea>
                            </div>
                            <!--id="mainBannerTopIssueInsert 插入链接-->
                        <div id="mainBannerTopIssueInsert">
                            <!--4个小div-->
                        </div>
                          <!--确认发布-->
                        <div id="mainBannerTopIssueSure">
                          <div id="mainBannerTopIssueSure2"> <a href="file" class="a1">
                            <div id="mainBannerTopIssueInsert1"></div>
                            <div id="mainBannerTopIssueInsert2">插入图片 </div>
                            </a>
                            <div id="mainBannerTopIssueInsert3"></div>
                            <div id="mainBannerTopIssueInsert4">插入视频 </div>
                            <a href="javascript:biaoQingXianShi()" class="a1">
                              <div id="mainBannerTopIssueInsert5"></div>
                              <div id="mainBannerTopIssueInsert6">插入表情</div>
                            </a>
                            <input type="button" name="button1" id="button1" value="发布" style="background-color:#3295E6; border:none" onclick="submitState()" />
                          </div>
                        </div>
                        </div>
                    </form> 
          </div>
          <!-- 表情DIV -->
          <div id="biaoqing"><table width="200" border="1" cellspacing="0" cellpadding="0">
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
            </table></div>
        </div> 
            
            <!--id="mainBannerTitle 首页-->
            <div id="mainBannerTitle">
                <!--id="mainBannerTitleWord"-->
                <div id="mainBannerTitleWord"><a href="customerindex.jsp"><b>首页</b></a>&nbsp;&nbsp;&nbsp;&nbsp;<b>热门</b>
                </div>
                <div id="mainBannerTitleWord2">
                    <form action="" method="get">
                        <label for="textfield1"></label><input type="text" name="textfield" id="textfield1"/>
                        <a href="#"><img src="images/search.gif" alt="" width="27" height="25" style="border: none; vertical-align: middle;" title="" /></a>
                    </form>
                </div>
            </div> 
            <!--不同人的内容-->
            <div id="mainBannerContent">
                <!--个人展示，热门-->
            	<div class="stateShow" onmouseover="stateMouseOver(this)" onmouseout="stateMouseOut(this)" onclick="go2detail()">
                  <div class="stateShowWord">
                    <div class="stateOp"><a class="opState" href="#" onclick="changeOpState(this)">+&nbsp;关注</a></div>
                    <table width="450" border="0" cellpadding="0" cellspacing="0" class="stateTable">
                      <tr>
                        <td width="70" align="center" valign="top"><a href="#"><img src="images/face/16.jpg" alt="" width="48" height="48" /></a></td>
                        <td width="380" ><a href="#">乡下妹</a><img src="images/1.gif" style="border:none;vertical-align:middle;"  alt=""/> 【视频：超模的儿子每月需要30万元生活费？】- 超模琳达·伊万格丽斯塔为四岁的儿子向他的父亲、法国亿万富翁弗朗索瓦-亨利·皮诺特索要每月4.6万美元的抚养费。在视频中，《华尔街日报》的Robert Frank和Kelsey Hubbard讨论了富豪家庭在孩子身上的花销。 </td>
                      </tr>
                    </table>
                  </div>
                   <div class="stateImgShow"><img src="images/state1.jpg"  alt=""/></div>
                  <div class="stateShowtime"> 07月31日 08:02 </div>
                  <div class="stateOp"><a class="opState" onclick="javascript:;" href="#">回复 100</a><a class="opDone" href="#">转发 100</a><a class="opState" onclick="" href="#">赞 100</a></div>
                  <div class="huifu"></div>
                </div>
                 <!--个人展示结束-->
                  <!--个人展示-->
                <div class="stateShow" onmouseover="stateMouseOver(this)" onmouseout="stateMouseOut(this)" onclick="go2detail()">
                  <div class="stateShowWord">
                      <div class="stateOp"><a class="opState" href="#" onclick="changeOpState(this)">+&nbsp;关注</a></div>
                      <table width="450" border="0" cellpadding="0" cellspacing="0" class="stateTable">
                      <tr>
                        <td width="70" align="center" valign="top"><a href="#"><img src="images/mainBannerContent2People1Img.gif" width="54" height="54" alt="" title="" /></a></td>
                        <td width="380"><a href="#">开心段子</a><img src="images/1.gif" style="border:none;vertical-align:middle;"  alt=""/>【真相】 XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX </td>
                      </tr>
                    </table>
                  </div>
                   <div class="stateImgShow"><img src="images/SCT.gif" width="34" height="166" alt="" title="" /></div>
                  <div class="stateShowtime"> 07月31日 08:02 </div>
                  <div class="stateOp"><a onclick="javascript:;" class="opDone" href="#">回复 100</a><a class="opState" href="#">转发 100</a><a class="opState" onclick="" href="#">赞 100</a></div>
                  <div class="huifu"></div>
                </div>
                 <!--个人展示结束-->
                 <!--个人展示-->
                <div class="stateShow" onmouseover="stateMouseOver(this)" onmouseout="stateMouseOut(this)" onclick="go2detail()">
                  <div class="stateShowWord">
                      <div class="stateOp"><a class="opDone" href="#" onclick="changeOpState(this)">+&nbsp;关注</a></div>
                      <table width="450" border="0" cellpadding="0" cellspacing="0" class="stateTable">
                      <tr>
                        <td width="70" align="center" valign="top"><a href="#"><img src="images/mainBannerContent2People2Img.gif" width="54" height="54" alt="" title="" /></a></td>
                        <td width="380"><a href="#">不明真真相</a><img src="images/1.gif" style="border:none;vertical-align:middle;"  alt=""/>YYYYYYYYYYYYYYYYYYYYYYYYYYYYYY </td>
                      </tr>
                    </table>
                  </div>
                   <div class="stateImgShow">
                   	 <img src="images/SCT.gif" width="34" height="166" alt="" title="" /></div>
                  <div class="stateShowtime"> 07月31日 08:02 </div>
                  <div class="stateOp"><a onclick="javascript:;" class="opState" href="#">回复 100</a><a class="opState" href="#">转发 100</a><a class="opDone" onclick="" href="#">赞 100</a></div>
                   <div class="huifu"></div>
                </div>
                 <!--个人展示结束-->
                  <!--个人展示-->
                <div class="stateShow" onmouseover="stateMouseOver(this)" onmouseout="stateMouseOut(this)" onclick="go2detail()">
                  <div class="stateShowWord">
                      <div class="stateOp"><a class="opDone" href="#" onclick="changeOpState(this)">+&nbsp;关注</a></div>
                      <table width="450" border="0" cellpadding="0" cellspacing="0" class="stateTable">
                      <tr>
                        <td width="70" align="center" valign="top"><a href="#"><img src="images/mainBannerContent2People3Img.gif.gif" width="54" height="54" alt="" title="" /></a></td>
                        <td width="380"><a href="#">经典微博语录</a><img src="images/1.gif" style="border:none;vertical-align:middle;"  alt=""/>ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ </td>
                      </tr>
                    </table>
                  </div>
                   <div class="stateImgShow">
                   	 <img src="images/people2.gif"  alt=""/></div>
                  <div class="stateShowtime"> 07月31日 08:02 </div>
                  <div class="stateOp"><a onclick="javascript:;" class="opState" href="#">回复 100</a><a class="opDone" href="#">转发 100</a><a class="opState" onclick="" href="#">赞 100</a></div>
                   <div class="huifu"></div>
                </div>
                 <!--个人展示结束-->
                 <!--个人展示-->
                <div class="stateShow" onmouseover="stateMouseOver(this)" onmouseout="stateMouseOut(this)" onclick="go2detail()">
                  <div class="stateShowWord">
                      <div class="stateOp"><a class="opState" href="#" onclick="changeOpState(this)">+&nbsp;关注</a></div>
                      <table width="450" border="0" cellpadding="0" cellspacing="0" class="stateTable">
                      <tr>
                        <td width="70" align="center" valign="top"><a href="#"><img src="images/mainBannerContent2People1Img.gif" width="54" height="54" alt="" title="" /></a></td>
                        <td width="380"><a href="#">漂流瓶</a><img src="images/1.gif" style="border:none;vertical-align:middle;"  alt=""/>WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW </td>
                      </tr>
                    </table>
                  </div>
                   <div class="stateImgShow"></div>
                  <div class="stateShowtime"> 07月31日 08:02 </div>
                  <div class="stateOp"><a onclick="javascript:;" class="opState" href="#">回复 100</a><a class="opState" href="#">转发 100</a><a class="opDone" onclick="" href="#">赞 100</a></div>
                   <div class="huifu"></div>
                </div>
                 <!--个人展示结束-->
                  <!--个人展示-->
                <div class="stateShow" onmouseover="stateMouseOver(this)" onmouseout="stateMouseOut(this)" onclick="go2detail()">
                  <div class="stateShowWord">
                      <div class="stateOp"><a class="opState" href="#" onclick="changeOpState(this)">+&nbsp;关注</a></div>
                      <table width="450" border="0" cellpadding="0" cellspacing="0" class="stateTable">
                      <tr>
                        <td width="70" align="center" valign="top"><a href="#"><img src="images/state2.jpg" alt="" width="48" height="48" /></a></td>
                        <td width="380"><a href="#">家人杂志</a><img src="images/1.gif" style="border:none;vertical-align:middle;"  alt=""/>分享图片:三十多年前,林青霞和邓丽君在法国戛纳.当时最红的两位女子定格在一起,她们陪伴多少人走过那段流金岁月? </td>
                      </tr>
                    </table>
                  </div>
                   <div class="stateImgShow">
                   	 <img src="images/state3.jpg"  alt=""/></div>
                  <div class="stateShowtime"> 07月31日 08:02 </div>
                  <div class="stateOp"><a onclick="javascript:;" class="opDone" href="#">回复 100</a><a class="opState" href="#">转发 100</a><a class="opState" onclick="" href="#">赞 100</a></div>
                   <div class="huifu"></div>
                </div>
                 <!--个人展示结束-->
            </div>
      </div>
      <!-- 左侧mainBanner DIV 结束-->
      <!-- 右侧mainRight DIV开始 -->
  <div id="mainRight">
      <div id="mainRight1">

                    	<!-- 右侧mainRightPostionFirstLine DIV 开始 -->
                    	<div id="mainRightPostionFirstLine">
                            <!-- 右侧mainRightPostionFirstLineIcon DIV 开始 -->
                            <div style="height:58px;">
                            <div id="mainRightPostionFirstLineIcon">
                            	<a href="mywb.jsp"><img src="images/MainRightFirstLineTitle.gif" alt="" width="48" height="48" style="border:none;vertical-align:middle;" title="" /></a>
                            </div>
                            <!-- 右侧mainRightPostionFirstLineIcon DIV 结束 -->
                            <!-- 右侧mainRightPostionFirstLineWord1 DIV 开始 -->
                            <div id="mainRightPostionFirstLineWord1">                 
                            &nbsp;<span style="color: #005DC3;" ><b><a href="mywb.jsp" class="a1">DarkDemon</a></b></span><br />
                            &nbsp;天津&nbsp;&nbsp;河西区
                            </div>
                            </div>
                            <!-- 右侧mainRightPostionFirstLineWord1 DIV 结束 -->
                        	<!-- 右侧mainRightPostionFirstLineWord2 DIV 开始 -->
                          <div id="mainRightPostionFirstLineWord2">
                                <ul>
                                	<li><a href="./BlogServlet" class="a1"><span class="style1">2</span><br /><span class="style2">微博</span></a></li>
                                    <li><a href="./FollowServlet" class="a1"><span class="style1">12</span><br /><span class="style2">关注</span></a></li>
                                    <li><a href="./FanServlet" class="a1"><span class="style1">23</span><br /><span class="style2">粉丝</span></a></li>
                                </ul>
                           </div>
                           <!-- 右侧mainRightPostionFirstLineWord2 DIV 结束 -->                    
                        </div>
                        <!-- 右侧mainRightPostionFirstLine DIV 结束 -->
                        <!-- 右侧mainRightPostionSecondLine DIV 开始 -->
                        <div id="mainRightPostionSecondLine">
                            <!-- 右侧mainRightPositionSecondLineContent DIV 开始 -->
                            <div id="mainRightPositionSecondLineContent">
                                <a href="customerindex.jsp" class="a1"><span class="style3">首页</span></a>
                                <hr class="h1">
                                <a href="mycollection.jsp" class="a1"><span class="style3">我的收藏</span></a>
                                <hr class="h1">
                                <a href="mylike.jsp" class="a1"><span class="style3">我的赞</span></a>
                            </div>
                            <!-- 右侧mainRightPositionSecondLineContent DIV 开始 -->
                        </div>
                        <!-- 右侧mainRightPostionSecondLine DIV 结束 -->
                        <!-- 右侧mainRightPostionThirdLine DIV 开始 -->
                        <div id="mainRightPostionThirdLine">
                            <!-- 右侧mainRightPositionThirdLineContent DIV 开始 -->
                            <div id="mainRightPositionThirdLineContent">
                            <p><a href="#" onclick="" class="a1"><span class="style4">你可能感兴趣的人</span>
                            <img src="images/ThirdLineUpArrow.gif" alt="" width="12" height="14" style="border: none; vertical-align: middle;" title=""/></a></p>
                            <br />
                            <div id="d32" style="float:right"><a href="#" class="a1">查看更多</a></div>
                            </div>                    	
                            <!-- 右侧mainRightPositionThirdLineContent DIV 结束 -->	
                        </div>
                        <!-- 右侧mainRightPostionThirdLine DIV 开始 -->
                        <!-- 右侧mainRightPostionFourthLine DIV 开始 -->
                        <div id="mainRightPostionFouthLine">
                        	<!-- 右侧mainRightPositionThirdLineContent DIV 结束 -->	
                        	<div id="mainRightPositionFourthLineContent">
                            <a href="#" onclick="" class="a1"><span class="style4">热门话题</span>
                            <img src="images/ThirdLineUpArrow.gif" alt="" width="12" height="14" style="border: none; vertical-align: middle;" title="" /></a>
                            <ul id="ul2" style="line-height:25px;">
                            	<li><a href="#" class="a1"><span class="style2">动车(49585)</span></a></li>
                                <li><a href="#" class="a1"><span class="style2">高铁(48704)</span></a></li>
                                <li><a href="#" class="a1"><span class="style2">遇难者(10616)</span></a></li>
                                <li><a href="#" class="a1"><span class="style2">发言人(12875)</span></a></li>
                                <li><a href="#" class="a1"><span class="style2">铁道部(24488)</span></a></li>
                                <li><a href="#" class="a1"><span class="style2">暴雨(8914)</span></a></li>
                                <li><a href="#" class="a1"><span class="style2">伊伊(921</span>)</a></li>
                                <li><a href="#" class="a1"><span class="style2">变形金刚(2908)</span></a></li>
                                <li><a href="#" class="a1"><span class="style2">味千拉面(450)</span></a></li>
                                <li><a href="#" class="a1"><span class="style2">第三届网络原创歌曲大赛(27)</span></a></li>
                            </ul>
                            </div>
                            <!-- 右侧mainRightPositionThirdLineContent DIV 结束 -->	
                        </div>
                        <!-- 右侧mainRightPostionFoutrhLine DIV 结束 -->
                    <!-- 右侧mainRightPostionFifthLine DIV 开始 -->
                    <div id="mainRightPostionFifthLine">
                    	<div id="mainRightPositionFifthLineContent">
                        	<a href="#" onclick="" class="a1"><span class="style4">我关注的话题</span>
                            <img src="images/ThirdLineUpArrow.gif" alt="" width="12" height="14" style="border: none; vertical-align: middle;" title="" /></a>
                        </div>
                    </div>
                    <!-- 右侧mainRightPostionFifthLine DIV 结束 -->
                    <!-- 右侧mainRightPostionSixthLine DIV 开始 -->
                    <div id="mainRightPostionSixthLine">
                    	<div id="mainRightPositionSixthLineContent">
                        	<a href="#" onclick="" class="a1"><span class="style4">我关注的</span>
                            <img src="images/ThirdLineUpArrow.gif" alt="" width="12" height="14" style="border: none; vertical-align: middle;" title="" /></a>
                        </div>
                        <ul>
                        	<li><a href="#" class="a1"><img src="images/WBXM.gif" style="border: none;"  alt=""/><br /><span class="style2">微博小秘</span></a></li>
                            <li><a href="#" class="a1"><img src="images/AXXR.gif" style="border: none;"  alt=""/><br /><span class="style2">&nbsp;&nbsp;转&nbsp;&nbsp;发</span></a></li>
                            <li><a href="#" class="a1"><img src="images/LBXR.gif" style="border: none;"  alt=""/><br /><span class="style2">微博新人</span></a></li>
                        </ul>
                    </div>
                    <!-- 右侧mainRightPostionSixthLine DIV 结束 -->
                    <!-- 右侧mainRightPostionSeventhLine DIV 开始 -->
                    <div id="mainRightPostionSeventhLine">
                        <div id="mainRightPositionSevenLineContent">
                        微博的成长，离不开你们。<br />
                        <span class="style2"><a href="#" class="a1">有意见要提（点击） </a><br /><br />
                        <a href="#" class="a1" onclick="set()" >不良信息举报中心</a></span>
                        </div>
                    </div>
                    <!-- 右侧mainRightPostionSeventhLine DIV 结束 -->
        </div>
     </div>
      <!-- 右侧mainRightDiv 结束 -->
  </div>
    <!-- 回复 100DIV 开始 -->
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
