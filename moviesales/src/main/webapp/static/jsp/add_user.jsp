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
    <title>添加新会员</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/static/style/adminStyle.css" rel="stylesheet" type="text/css" />
</head>
<script type="text/javascript" src="/static/js/jquery-1.9.0.min.js"></script>
<body>
<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><i class="add_user"></i><em>添加新会员</em></span>
    </div>
    <form action="/add" method="post">
        <table class="list-style">
            <tr>
                <td style="width:15%;text-align:right;">会员昵称：</td>
                <td><input type="text" class="textBox length-middle" name="name"/></td>
            </tr>
            <tr>
                <td style="text-align:right;">会员邮箱：</td>
                <td><input type="text" class="textBox length-middle" name="email"/></td>
            </tr>
            <tr>
                <td style="text-align:right;">设置密码：</td>
                <td><input type="password" class="textBox length-middle" name="passwd"/></td>
            </tr>
            <tr>
                <td style="text-align:right;">手机号码：</td>
                <td><input type="text" class="textBox length-middle" name="phone"/></td>
            </tr>
            <tr>
                <td style="text-align:right;">等级：</td>
                <td>
                    <select name="grade" class="textBox length-middle">
                        <option value="0">选择会员等级</option>
                        <option value="1">白金会员</option>
                        <option value="2">黄金会员</option>
                </select></td>
            </tr>
            <tr>
                <td style="text-align:right;"></td>
                <td>
                    <input type="submit" class="tdBtn" value="添加新用户"/>&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="button" value="返回" class="tdBtn" onclick="javascript:history.back(-1)">
                </td>
            </tr>
        </table>
        <p style="color: red" align="center">${msg}</p>
    </form>
</div>
</body>
</html>
<script type="text/javascript">
    $("form").submit(function () {
        var name =$("[name='name']").val();
        var email=$("[name='email']").val();
        var passwd=$("[name='passwd']").val();
        var phone=$("[name='phone']").val();
        if(name==""||email==""||passwd==""||phone==""){
            alert("请填写完整信息！！！");
            return false;
        }
        return true;
    })
</script>
