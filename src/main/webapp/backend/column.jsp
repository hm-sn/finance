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
    <table class="table table-hover text-center">
        <tr>
            <th width="5%">ID</th>
            <th>标题</th>
            <th>描述</th>
            <th width="250">操作</th>
        </tr>

        <tr>
            <td>17</td>
            <td>住建部等四部门：防止提取住房公积金用于炒房投机</td>
            <td>1</td>
            <td>
                <div class="button-group">
                    <a type="button" class="button border-main" href="#"><span class="icon-edit"></span>修改</a>
                    <a class="button border-red" href="javascript:void(0)" onclick="return del(17)"><span class="icon-trash-o"></span> 删除</a>
                </div>
            </td>
        </tr>

        <tr>
            <td>17</td>
            <td>更高站位、更宽视野——海南推进自贸区（港）建设见闻</td>
            <td>1</td>
            <td>
                <div class="button-group">
                    <a type="button" class="button border-main" href="#"><span class="icon-edit"></span>修改</a>
                    <a class="button border-red" href="javascript:void(0)" onclick="return del(17)"><span class="icon-trash-o"></span> 删除</a>
                </div>
            </td>
        </tr>

        <tr>
            <td>17</td>
            <td>新政策实施以来新三板挂牌公司成交金额超300亿元</td>
            <td>1</td>
            <td>
                <div class="button-group">
                    <a type="button" class="button border-main" href="#"><span class="icon-edit"></span>修改</a>
                    <a class="button border-red" href="javascript:void(0)" onclick="return del(17)"><span class="icon-trash-o"></span> 删除</a>
                </div>
            </td>
        </tr>

        <tr>
            <td>17</td>
            <td>乘“风”扬帆的香港债市将开启新里程</td>
            <td>1</td>
            <td>
                <div class="button-group">
                    <a type="button" class="button border-main" href="#"><span class="icon-edit"></span>修改</a>
                    <a class="button border-red" href="javascript:void(0)" onclick="return del(17)"><span class="icon-trash-o"></span> 删除</a>
                </div>
            </td>
        </tr>

        <tr>
            <td>17</td>
            <td>央行：加强绿色金融债券存续期监督管理</td>
            <td>1</td>
            <td>
                <div class="button-group">
                    <a type="button" class="button border-main" href="#"><span class="icon-edit"></span>修改</a>
                    <a class="button border-red" href="javascript:void(0)" onclick="return del(17)"><span class="icon-trash-o"></span> 删除</a>
                </div>
            </td>
        </tr>

    </table>
</div>
<script>
    function del(id){
        if(confirm("您确定要删除吗?")){

        }
    }
</script>
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
                    <input type="text" class="input w50" name="title" value="" data-validate="required:请输入标题" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>描述：</label>
                </div>
                <div class="field">
                    <textarea type="text" class="input" name="s_desc" style="height:100px;" ></textarea>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body></html>
