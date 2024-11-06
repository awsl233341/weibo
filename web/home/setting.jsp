<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人设置</title>
<link href="styles/global.css" type="text/css" rel="stylesheet" />
<link href="styles/setting.css" type="text/css" rel="stylesheet" />
<script src="script/iframeauto.js" type="text/javascript"></script>
</head>

<body>
<!-- container部分DIV -->
<div id="container">
	<!-- top部分DIV -->
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
                <li><a href="setting.html">设置</a></li>
                <li><a href="#">帮助</a></li>
                <li><a href="index.jsp">退出</a></li>
            </ul>
        </div>
        <!-- top部分的文字导航结束 -->
    </div>
    <!-- top部分结束 -->
    <!-- header部分DIV -->
    <div id="header">
        <ul>
           <li><a href="account.html" class="header" target="win">账号设置</a></li>
           <li><a href="password.jsp" class="header" target="win">密码</a></li>
           <li><a href="avatar.jsp" class="header" target="win">头像</a></li>
           <li><a href="design.jsp" class="header" target="win">模板</a></li>
        </ul>
    </div>
    <!-- header部分DIV结束 -->
    	<iframe src="account.html" id="win" width="765" scrolling="no" name="win" onload="SetWinHeight(this)" frameborder="0"></iframe>
        <!-- banner部分的DIV结束 -->
  	<!-- footer部分 -->
    <div id="footer">
    	<!-- footer网站链接部分 -->
    	<div id="footerLink">
        	<ul>
            	<li><a href="#">介绍</a></li>
                <li><a href="#">广告服务</a></li>
                <li><a href="#">API</a></li>
                <li><a href="#">诚征英才</a></li>
                <li><a href="#">保护隐私权</a></li>
                <li><a href="#">免责条款</a></li>
                <li><a href="#">法律顾问</a></li>
                <li><a href="#">意见反馈</a></li>
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
<!-- container部分结束 -->
</body>
</html>
