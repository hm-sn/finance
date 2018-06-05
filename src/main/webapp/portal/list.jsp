
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta charset="utf-8" />
<meta name="author" content="order by dede58.com/" />
<link  href="css/style.css" rel="stylesheet" type="text/css" />
<script src="js/animition.js"></script>
<script src="js/jquery.js"></script>
<head>

</head>
<body>
<div class="top">
    <nav>
        <div class="logo"><img src="images/logo.png" width="auto" height="100%" /></div>
        <div class="nav">
            <ul>
                <li class="index"><a href="#">首页</a></li>
                <li><a href="#">咨询</a></li>
                </li>
                <li><a href="#" class="text-bj nav-80">活动</a>
                    <dl class="nav-80">
                        <dd><a href="#">UTalk</a><i></i></dd>
                        <dd><a href="#">设计大赛</a><i></i></dd>
                    </dl></li>
                <li><a href="#">招聘</a></li>
            </ul>
        </div>
        <section>
            <div class="head"><a href="#"><img src="images/not-head.png" /></a>
                <ul>
                    <li><a href="#">我的作品</a></li>
                    <li><a href="#">我的收藏</a></li>
                    <li><a href="#">我的简历</a></li>
                    <li><a href="#">修改资料</a></li>
                    <li><a href="#">退出登录</a></li>
                </ul>
            </div>
            <div class="search"></div>
            <div class="search_input"><input type="text" placeholder="请输入关键字" id="txt"/></div>
            <div class="IT"><a href="#" class="text-zp">全部</a>
                <dl class="dll">
                    <dd><a href="#">全部</a></dd>
                </dl>

            </div>
        </section>

    </nav>
</div>
<div class="bottom_text"><span style="color:#666">搜索结果</span></div>
<table class="custom_tb">
    <thead>
    <tr>
        <th width="100" style="text-align:left; padding-left:20px;">#</th>
        <th>标题</th>
        <th width="10%">更新时间</th>
    </tr>
    </thead>
    <tr>
        <td style="text-align:left; padding-left:20px;">1</td>
        <td>这是一套MUI后台精美管理系统，感谢您的支持</td>
        <td>2016-07-01</td>
    </tr>
    <tr>
        <td style="text-align:left; padding-left:20px;">1</td>
        <td>这是一套MUI后台精美管理系统，感谢您的支持</td>
        <td>2016-07-01</td>
    </tr>
    <tr>
        <td style="text-align:left; padding-left:20px;">1</td>
        <td>这是一套MUI后台精美管理系统，感谢您的支持</td>
        <td>2016-07-01</td>
    </tr>
    <tr>
        <td style="text-align:left; padding-left:20px;">1</td>
        <td>这是一套MUI后台精美管理系统，感谢您的支持</td>
        <td>2016-07-01</td>
    </tr>
    <tr>
        <td style="text-align:left; padding-left:20px;">1</td>
        <td>这是一套MUI后台精美管理系统，感谢您的支持</td>
        <td>2016-07-01</td>
    </tr>
    <tr>
        <td colspan="8"><div class="pagelist"> <a href="">上一页</a> <span class="current">1</span><a href="">2</a><a href="">3</a><a href="">下一页</a><a href="">尾页</a> </div></td>
    </tr>
</table>

<footer>
    <div class="footer">
        <div class="footer_logo"><img src="images/logo.png"></div>

        <div class="footer_box">
            <div class="footer_label">
                <a href="#">商务合作</a>
                <a href="#">意见反馈</a>
                <a href="#">关于我们</a>
                <a href="#">联系我们</a>
                <a href="#">版权声明</a>
                <a href="#">隐私保护</a>
            </div>
            <div class="footer_cpye"><a href="#">京ICP备14007358号-1 / 京公网安备11010802014104号 / Powered by © 2018 UI.CN</a></div>        <div class="footer_img">
            <li><a href="#"><img src="images/icon-wx.png"></a><span><img src="images/wx.png"></span></li>
            <li><a href="#"><img src="images/icon-wb.png"></a></li>
            <li><a href="#"><img src="images/icon-qq.png"></a></li>
        </div>
            <div class="footer_img_1">
                <img src="images/cnnic.png">
                <img src="images/hy_83x30.png">
            </div>
        </div>
    </div>
</footer>
</div>
</body>
<script type="text/javascript">
    $(document).ready(function () {
        $.ajax({
            url: "/category/getAll.do",
            type: "get",
            dataType: "json",
            async: true,
            success: function (data) {
                alert(data.data);
                var datas = data.data;
                console.log(datas);
                $.each(datas, function (i, item) {
                    $(".dll").append("<dd><a href=\"#\">"+datas[i]['title']+"</a></dd>");
                })
            }
        })
    });

    $(".search").click(function(){
        var text = $("#txt");
        $.ajax({
            url: "/item/selectByKeyWord.do?keyWord="+text.val(),
            type: "get",
            dataType: "json",
            async: true,
            success: function (data) {
                //alert(data.status);
                var datas = data.data;
                console.log(datas);
                $.each(datas, function (i, item) {
                })
            }
        })
    });
</script>
</html>
