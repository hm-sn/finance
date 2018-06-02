<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>用户登录</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="Keywords" content="网站关键词">
    <meta name="Description" content="网站介绍">
    <link rel="stylesheet" href="/portal/css/base.css">
    <link rel="stylesheet" href="./portal/css/iconfont.css">
    <link rel="stylesheet" href="./portal/css/reg.css">
    <script src="/portal/js/jquery.js"></script>
    <script src="/portal/js/agree.js"></script>
    <script src="/portal/js/login.js"></script>
</head>
<body>
<div id="ajax-hook"></div>
<div class="wrap">
    <div class="wpn">
            <form action="/user/login.do" method="post">
            <div class="form-data pos">
            <a href=""><img src="/portal/img/logo.png" class="head-logo"></a>
            <div class="change-login">
                <p class="account_number on">账号登录</p>
                <p class="message">短信登录</p>
            </div>
            <div class="form1">
                <p class="p-input pos">
                    <label for="username">手机号/用户名/UID/邮箱</label>
                    <input type="text" id="username">
                    <span class="tel-warn num-err hide"><em>账号或密码错误，请重新输入</em><i class="icon-warn"></i></span>
                </p>
                <p class="p-input pos">
                    <label for="password">请输入密码</label>
                    <input type="password" style="display:none"/>
                    <input type="password" id="password" autocomplete="new-password">
                    <span class="tel-warn pass-err hide"><em>账号或密码错误，请重新输入</em><i class="icon-warn"></i></span>
                </p>
                <p class="p-input pos code hide">
                    <label for="veri">请输入验证码</label>
                    <input type="text" id="veri">
                    <img src="">
                    <span class="tel-warn img-err hide"><em>账号或密码错误，请重新输入</em><i class="icon-warn"></i></span>
                    <!-- <a href="javascript:;">换一换</a> -->
                </p>
            </div>
            <div class="form2 hide">
                <p class="p-input pos">
                    <label for="num2">手机号</label>
                    <input type="number" id="num2">
                    <span class="tel-warn num2-err hide"><em>账号或密码错误</em><i class="icon-warn"></i></span>
                </p>
                <p class="p-input pos">
                    <label for="veri-code">输入验证码</label>
                    <input type="number" id="veri-code">
                    <a href="javascript:;" class="send">发送验证码</a>
                    <span class="time hide"><em>120</em>s</span>
                    <span class="tel-warn error hide">验证码错误</span>
                </p>
            </div>
            <div class="r-forget cl">
                <a href="/portal/reg.jsp" class="z">账号注册</a>
                <a href="/portal/getpass.jsp" class="y">忘记密码</a>
            </div>
            <button  type="button" id="button" class="lang-btn off log-btn">登录</button>
            <div class="third-party">
                <a href="#" class="log-qq icon-qq-round"></a>
                <a href="#" class="log-qq icon-weixin"></a>
                <a href="#" class="log-qq icon-sina1"></a>
            </div>
            <p class="right">Powered by © 2018</p>
        </div>
        </form>
    </div>
</div>
<script type="text/javascript">
    $("#button").click(function () {
        var username = $("#username").val();
        var password = $("#password").val();
        $.ajax({
            url: "/user/login.do",
            type: "post",
            data: {
                username: username,
                password: password
            },
            dataType: "json",
            async: true,
            success: function (data) {
                if(data.status == 0){
                    $(window).attr('location','/portal/index.jsp');
                }else if(data.status == 1){
                    $("#password1").text(data.msg);
                }
            }
        })
    });
</script>
</body>
</html>
