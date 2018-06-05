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
    <title></title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
</head>
<body>
<form method="post" action="" id="listform">
    <div class="panel admin-panel">
        <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
        <div class="padding border-bottom">
            <ul class="search" style="padding-left:10px;">
                <li> <a class="button border-main icon-plus-square-o" href="add.html"> 添加内容</a> </li>
            </ul>
        </div>
        <table class="table table-hover text-center" id="contentList">
            <tr>
                <th width="100" style="text-align:left; padding-left:20px;">ID</th>
                <th>名称</th>
                <th>分类名称</th>
                <th width="310">操作</th>
            </tr>


        </table>
        <table class="table table-hover text-center">
            <tr>
                <td colspan="8"><div class="pagelist"> <a href="">上一页</a> <span class="current">1</span><a href="">2</a><a href="">3</a><a href="">下一页</a><a href="">尾页</a> </div></td>
            </tr>
        </table>

    </div>
</form>
<script type="text/javascript">


    $(document).ready(function () {
        $.ajax({
            url: "/manage/item/getAll.do",
            type: "get",
            dataType: "json",
            async: true,
            success: function (data) {
                var datas = data.data;
                $.each(datas, function (i, item) {
                    $("#contentList").append("<tr><th>"+datas[i]['id']+"</th><th>"+datas[i]['title']+"</th><th>世界贸易</th><th><button type='button' onclick='de(id)'>删除</button></th></tr>");
                })
            }
        })
    });


    //删除
    function de(id){
        $.ajax({
            url: "/manage/item/delete.do",
            type: "POST",
            data: {
                id: id
            },
            dataType: "json",
            async: true,
            success: function (data) {
                if(data.status == 0){
                    alert("删除成功");
                    $(window).attr('location','/backend/list.jsp');
                }
            }
        });

    }
</script>
</body>
</html>
