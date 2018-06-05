<%--
  Created by IntelliJ IDEA.
  User: ClanceRen
  Date: 2018/6/1
  Time: 22:18
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
    <title></title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>增加内容</strong></div>
    <div class="body-content">
        <form method="post" class="form-x" action="">
            <div class="form-group">
                <div class="label">
                    <label>标题：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" value="" id="title" name="title" data-validate="required:请输入标题" />
                    <div class="tips"></div>
                </div>
            </div>

            <if condition="$iscid eq 1">
                <div class="form-group">
                    <div class="label">
                        <label>分类标题：</label>
                    </div>
                    <div class="field">
                        <select name="cid" class="input w50" id="select">
                            <option value="">请选择分类</option>
                            <option value="产品分类">产品分类</option>
                            <option value="颜色分类">颜色分类</option>
                            <option value="样式分类">样式分类</option>
                            <option value="内容分类">内容分类</option>
                        </select>
                        <div class="tips"></div>
                    </div>
                </div>
            </if>
            <div class="form-group">
                <div class="label">
                    <label>内容：</label>
                </div>
                <div class="field">
                    <textarea name="content" class="input" id="content" style="height:450px; border:1px solid #ddd;"></textarea>
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" id="button" type="submit"> 提交</button>
                </div>
            </div>
        </form>
    </div>
</div>

</body>
<script type="text/javascript">
    $("#button").click(function () {
        var title = $("#title").val();
        var content = $("#content").val();
        alert("添加成功");
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
                    $(window).attr('location','/backend/add.jsp');
                }else if(data.status == 1){
                    $("#password1").text(data.msg);
                }
            }
        })
    });

</script></html>
