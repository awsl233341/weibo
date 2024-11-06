<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录 微薄-点滴生活，精彩每一天</title>
<link href="styles/global.css" type="text/css" rel="stylesheet" />
<link href="styles/login.css" type="text/css" rel="stylesheet" />
<script src="script/trim.js" type="text/javascript"></script>
<script src="script/login.js" type="text/javascript"></script>
</head>

<body>

<!--页面整体-->
<div id="container">
<!-- top部分DIV -->
	<div id="top">
    	<!-- top部分的LogoDIV -->
    	<div id="topLogo">
        	<!-- topLogo部分的icoDIV -->
            <div id="topLogoIco"> <a href="index.jsp"><img src="images/logo.png" width="177" height="72" alt="" /></a>
          </div>
            <!-- topLogo部分的icoDIV结束 -->
        </div>
        <!-- top部分的LogoDIV结束 -->
        
        <!-- top部分的文字导航 -->
        <div id="topWordMenu">
        	<ul>
            	<li>已有账号，<a href="login.jsp">请登录</a></li>
                <li><a href="index.jsp">微博首页</a></li>
                <li><a href="#">帮助</a></li>
            </ul>
        </div>
        <!-- top部分的文字导航结束 -->
    </div>
    <!-- top部分结束 -->
<!-- 页面主体 -->
 <div id="banner">
   <!-- 页面左部 -->
   <div id="left">
   <!--页面左部表单设置-->
   <form id="LoginForm" action="../LoginServlet" method="post" onsubmit="return checkForm()">
     <table width="565" border="0" cellspacing="0" cellpadding="0">
       <tr class="lb">
         <td></td>
         <td></td>
         <td></td>
         <td></td>
       </tr>
       <tr>
         <td class="le"></td>
         <td class="ld"><label for="userId">手机/邮箱</label></td>
         <td class="if"><input name="userId" type="text" class="la" id="userId" /></td>
         <td></td>
       </tr>
       <tr>
         <td class="le"></td>
         <td class="ld"><label for="passWord">密码</label></td>
         <td class="if"><input name="passWord" type="password" class="la" id="passWord" /></td>
         <td></td>
       </tr>
       <tr>
         <td class="le"></td>
         <td class="ld"><label for="checkbox"></label></td>
         <td><input name="checkbox" type="checkbox" id="checkbox" checked="checked" />
           下次自动登录&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#">忘记密码</a></td>
         <td></td>
       </tr>
       <tr>
         <td class="le"></td>
         <td class="ld"></td>
         <td><a href="#">
           <input name="button" type="submit" class="lc" id="button" value="登  录" />
         </a></td>
         <td></td>
       </tr>
     </table>
     </form>
     <!--页面左部表单结束-->
   </div>
   <!-- 页面右部 -->
   <div id="right">
   			<!--页面右部文字及按钮设置-->
   			<div class="bs">
        		还没有微博？
            </div>
            <div class="cs">
           		赶快来注册一个吧
            </div>
            <div class="ds"><a href="register.jsp"><img src="images/anniu.gif" alt="立即注册" width="155" height="48" title="在这注册" /></a>
            </div>
   	</div>
  </div>
   <!--页面右部文字及按钮设置结束-->
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
</body>
</html>
