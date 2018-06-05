<%--
  Created by IntelliJ IDEA.
  User: ClanceRen
  Date: 2018/6/1
  Time: 22:22
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
    <title>网站信息</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 公告列表</strong></div>
    <div class="padding border-bottom">
        <button type="button" class="button border-yellow" onclick="window.location.href='#add'"><span class="icon-plus-square-o"></span> 添加内容</button>

    </div>
    <table class="table table-hover text-center" id="xinwenList">
        <tr>
            <th width="5%">ID</th>
            <th>标题</th>
            <th>描述</th>
            <th width="250">操作</th>
        </tr>
    </table>
</div>

<div class="panel admin-panel margin-top">
    <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>增加内容</strong></div>
    <div class="body-content">
        <form method="post" class="form-x" action="">
            <input type="hidden" name="id"  value="" />
            <div class="form-group">
                <div class="label">
                    <label>标题：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="title" id="title" value="" data-validate="required:请输入标题" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>描述：</label>
                </div>
                <div class="field">
                    <textarea type="text" class="input" name="s_desc" id="content" style="height:100px;" ></textarea>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <span id="password1" style="color:red"></span>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" type="button" id="button33" value="提交">提交呀</button>

                </div>
            </div>
        </form>
    </div>
</div>
</body>
<script>
    function del(id){
        if(confirm("您确定要删除吗?")){

        }
    }

    $(document).ready(function () {
        $.ajax({
            url: "/manage/item/getAll.do",
            type: "get",
            dataType: "json",
            async: true,
            success: function (data) {
                var datas = data.data;
                $.each(datas, function (i, item) {
                    $("#xinwenList").append("<tr><th>"+datas[i]['id']+"</th><th>"+datas[i]['title']+"</th><th>"+datas[i]['content']+"</th><th><a href='#'>删除</a></th></tr>");
                })
            }
        })
    });

    $("#button33").click(function () {
        var title = $("#title").val();
        var content = $("#content").val();
        $.ajax({
            url: "/manage/item/addItemTitleContent.do",
            type: "post",
            data: {
                title: title,
                content: content
            },
            dataType: "json",
            async: true,
            success: function (data) {
                if(data.status == 0){
                    alert("添加新闻成功！");
                    $(window).attr('location','/backend/column.jsp');
                }else if(data.status == 1){
                    $("#password1").text(data.msg);
                }
            }
        })
    });
</script>
</html>
