<%--
  Created by IntelliJ IDEA.
  User: ClanceRen
  Date: 2018/6/1
  Time: 22:21
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
    <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong></div>
    <div class="padding border-bottom">
        <button type="button" class="button border-yellow" onclick="window.location.href='#add'"><span class="icon-plus-square-o"></span> 添加分类</button>
    </div>
    <table class="table table-hover text-center" id="categoryList">
        <tr>
            <th width="5%">ID</th>
            <th width="15%">一级分类</th>
            <th width="10%">排序</th>
            <th width="10%">操作</th>
        </tr>
    </table>
</div>
<script type="text/javascript">
    function del(id,mid){
        if(confirm("您确定要删除吗?")){

        }
    }
</script>
<div class="panel admin-panel margin-top">
    <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>添加分类</strong></div>
    <div class="body-content">
        <form method="post" class="form-x" action="">
            <div class="form-group">
                <div class="label">
                    <label>上级分类：</label>
                </div>
                <div class="field">
                    <select name="pid" class="input w50">
                        <option value="">请选择分类</option>
                        <option value="">产品分类</option>
                        <option value="">产品分类</option>
                        <option value="">产品分类</option>
                        <option value="">产品分类</option>
                    </select>
                    <div class="tips">不选择上级分类默认为一级分类</div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>分类标题：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="title" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>排序：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="sort" value="0"  data-validate="number:排序必须为数字" />
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
<script>
    function del(id){
        if(confirm("您确定要删除吗?")){

        }
    }

    $(document).ready(function () {
        $.ajax({
            url: "/manage/category/getAll.do",
            type: "get",
            dataType: "json",
            async: true,
            success: function (data) {
                var datas = data.data;
                $.each(datas, function (i, item) {
                    $("#categoryList").append("<tr><th>"+datas[i]['id']+"</th><th>"+datas[i]['title']+"</th><th>"+datas[i]['content']+"</th><th><a href='#'>删除</a></th></tr>");
                })
            }
        })
    });

    $("#button").click(function () {
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
