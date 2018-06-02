<%--
  Created by IntelliJ IDEA.
  User: ClanceRen
  Date: 2018/6/1
  Time: 22:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>登录</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
</head>
<body>
<div class="bg"></div>
<div class="container">
    <div class="line bouncein">
        <div class="xs6 xm4 xs3-move xm4-move">
            <div style="height:150px;"></div>
            <div class="media media-y margin-big-bottom">
            </div>
            <form action="/manage/user/login.do" method="post">
                <div class="panel loginbox">
                    <div class="text-center margin-big padding-big-top"><h1>后台管理中心</h1></div>
                    <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="text" id="username" class="input input-big" name="username" placeholder="登录账号" data-validate="required:请填写账号" />
                                <span class="icon icon-user margin-small"></span>
                                <span id="username1" style="color:red"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="password" id="password2" class="input input-big" name="password" placeholder="登录密码" data-validate="required:请填写密码" />
                                <span class="icon icon-key margin-small"></span>
                            </div>
                            <span id="password1" style="color:red"></span>
                        </div>
                    </div>
                    <div style="padding:30px;">
                        <button type="button" id="button" class="button button-block bg-main text-bi input-big" value="登录">登录</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
<script type="text/javascript">
    $("#button").click(function () {
        var username = $("#username").val();
        var password2 = $("#password2").val();
        alert(password2);
        $.ajax({
            url: "/manage/user/login.do",
            type: "post",
            data: {
                username: username,
                password: password
            },
            dataType: "json",
            async: true,
            success: function (data) {
                if(data.status == 0){
                    $(window).attr('location','/backend/index.jsp');
                }else if(data.status == 1){
                    $("#password1").text(data.msg);
                }
            }
        })
    });

</script>
</html>