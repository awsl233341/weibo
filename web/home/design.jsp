<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>模板设置 - 微博</title>
<link href="styles/global.css" type="text/css" rel="stylesheet" />
<link href="styles/design.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="script/design.js"></script>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
<!-- container部分DIV -->
<div id="container">
    <!-- banner部分的DIV -->
    <div id="banner">
        <!-- bannerLeft部分的DIV -->
        <div class="left" id="left">
            <!-- bannerLeft部分的WordDIV -->
            <div class="word" id="bannerLeftWodr"><strong>模板选择</strong>
            </div>
            <!-- bannerLeft部分的WordDIV结束 -->
            <!-- bannerLfet部分的picDIV -->
            <div class="pic" id="bannerLeftPic">
                <!-- 模板图片部分 -->
                <div class="p2">
                    <div class="p1"><img src="images/10.jpg" alt="" width="150" height="120" /><br /><br />
                          <a href="#" class="header">兔年大吉</a>
                    </div>
                    <div class="p1"> <a href="javascript:changeBg('../images/bg2.gif')"><img src="images/2.jpg" width="150" height="120" style="border:none;"  alt=""/></a><br /><br />
                          <a href="javascript:changeBg('../images/bg2.gif')" class="header">天高云谈</a>
                    </div>
                    <div class="p1">
                        <img src="images/3.jpg" width="150" height="120"  alt=""/><br /><br />
                          <a href="#" class="header">天水一色</a>
                    </div>
                </div>
                <div class="p2">
                    <div class="p1">
                        <img src="images/4.jpg" width="150" height="120"  alt=""/><br /><br />
                          <a href="#" class="header">旅游日记</a>
                    </div>
                    <div class="p1"> <a href="javascript:changeBg('../images/bg.gif')"><img src="images/5.jpg" width="150" height="120"  alt=""/></a><br /><br />
                          <a href="javascript:changeBg('../images/bg.gif')" class="header">海边</a>
                    </div>
                    <div class="p1">
                        <img src="images/6.jpg" width="150" height="120"  alt=""/><br /><br />
                          <a href="#" class="header">秋色</a>
                    </div>
                </div>
                <div class="p2">
                    <div class="p1">
                        <img src="images/7.jpg" width="150" height="120"  alt=""/><br /><br />
                          <a href="#">竹韵</a>
                    </div>
                    <div class="p1">
                        <img src="images/8.jpg" width="150" height="120"  alt=""/><br /><br />
                          <a href="#" class="header">粉色心情</a>
                    </div>
                    <div class="p1">
                        <img src="images/9.jpg" width="150" height="120"  alt=""/><br /><br />
                          <a href="#" class="header">Merry Xmas</a>
                    </div>
                </div>
                <!-- 模板图片部分结束 -->
                <!-- bannerLfet部分的btnDIV -->
              <div class="btn" id="banner_left_btn">
                    <label>
                       <input name="button" type="submit" class="btn" id="button" value="保存" />
                    </label>
                </div>
                <!-- bannerLfet部分的btnDIV结束 -->
            </div>
            <!-- bannerLfet部分的picDIV结束 -->
        </div>
        <!-- banner_left部分DIV结束 -->
        <!-- banner_right部分DIV -->
        <div class="right" id="right">
            <p><strong>关于模板：</strong><br />
              想与其他人与众不同，将个性化进行到底，没有什么比模板表达个人喜欢更直接了，在这里选择你喜欢的模板</p>
        </div>
        <!-- banner_right部分DIV结束 -->
    </div>
    <!-- banner部分DIV结束 -->
</div>
<!-- container部分DIV结束 -->
</form>
</body>
</html>
