<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>头像设置 - 微博</title>
<link href="styles/global.css" type="text/css" rel="stylesheet" />
<link href="styles/avatar.css" type="text/css" rel="stylesheet" />
</head>

<body>
<form action="../updUserServlet?opr=updateImg" method="post" enctype="multipart/form-data" name="form1" id="form1">
<!-- container部分DIV -->
<div id="container">
    <!-- banner部分DIV -->
    <div id="banner">
        <!-- banner部分的leftDIV -->
        <div class="left" id="left">
            <!-- bannerLeft部分的topDIV -->
          <div class="top" id="bannerTop">
            <!-- bannerLeftTop部分的picDIV -->
                <div class="pic1" id="bannerTopPic"><img src="images/tx2.jpg" width="96" height="96" style="filter: alpha(opacity=50); vertical-align: middle;"  alt=""/>
            </div>
                <!-- bannerLeftTop部分的picDIV结束 -->
                <!-- bannerLeftTop部分的wordDIV -->
            <div class="word" id="bannerTopWord">
                    <!-- 文件搜索区 -->
                    <label>
                        <input type="file" name="fileField" id="fileField"/>
                    </label>
              </div>
              <!-- 文件搜索区结束 -->
              <!-- bannerLeftTop部分的wordDIV -->
              <div class="left2" id="bannerLeftTopBtn">
                <label>
                  <input name="button" type="submit" class="btn" id="button" value="提交" />
                </label>
              </div>
              <!-- bannerLfetTop部分的btnDIV -->
            </div>
            <!-- bannerLeft部分的topDIV结束 -->
            <!-- bannerLeft部分的bottomDIV -->
          <div id="bannerBottom" class="bottom">
                <!-- 头像修改区 -->
                <table width="564" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="410" height="270" align="center">
                            <div class="left1" id="bannerBottomLeft"><img src="images/tx1.jpg" width="212" height="166" alt="wanglihong" style="border: none;" /></div>
                        </td>
                        <td height="270" valign="top">
                            <div class="right1" id="bannerBottomRight">
                                <p><img src="images/tx2.jpg" width="96" height="96" alt="wanglihong" /></p>
                                <p><img src="images/tx3.jpg" width="48" height="48" alt="wanglihong" /></p>
                                <p><img src="images/tx4.jpg" width="32" height="32" alt="wanglihong" /></p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="410" height="30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;通过上传图片后不显示新头像，按Ctrl+F5刷新页面
</td>
                        <td height="30">&nbsp;</td>
                    </tr>
                </table>
                <!-- 头像修改区结束 -->
          </div>
            <!-- bannerLeft部分的bottomDIV -->
        </div>
        <!-- banner_left部分DIV结束 -->
        <!-- banner_right部分DIV -->
        <div class="right" id="right">
            <p><strong>关于头像</strong></p>
            <p>头像是你展示自己的最好方式，再多的话也没一张头像对你的描述来得直接</p>
        </div>
        <!-- banner_right部分DIV结束 -->
    </div>
    <!-- banner部分DIV -->
</div>
<!-- container部分DI结束V -->
</form>
</body>
</html>
