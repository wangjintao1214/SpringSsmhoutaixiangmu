<%--
  Created by IntelliJ IDEA.
  User: 20254
  Date: 2020/10/15
  Time: 8:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增产品分类</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/static/style/adminStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><i></i><em>添加分类</em></span>
    </div>
    <form action="/add_category" method="post">
    <table class="list-style">
        <tr>
            <td style="text-align:right;width:15%;">分类名称：</td>
            <td>
                <input type="text" class="textBox" name="name"/>
            </td>
        </tr>
        <tr>
            <td style="text-align:right;width:15%;">产品数量：</td>
            <td>
                <input type="text" class="textBox" name="num"/>
            </td>
        </tr>
        <tr>
            <td style="text-align:right;width:15%;">单位：</td>
            <td>
                <input type="text" class="textBox" name="unit"/>
            </td>
        </tr>
        <tr>
            <td style="text-align:right; color:red;"></td>
            <td><input type="submit" value="保存" class="tdBtn"/></td>
        </tr>
        <span style="text-align:right;color: red">${mgs1}</span>
    </table>
    </form>
</div>
</body>
</html>
<script type="text/javascript" src="/static/js/jquery-1.9.0.min.js"></script>
<script type="text/javascript">
    $("form").submit(function () {
        var name =$("[name='name']").val();
        var num=$("[name='num']").val();
        var unit=$("[name='unit']").val();
        if(name==""||num==""||unit==""){
            alert("请填写完整信息！！！");
            return false;
        }
        return true;
    })
</script>