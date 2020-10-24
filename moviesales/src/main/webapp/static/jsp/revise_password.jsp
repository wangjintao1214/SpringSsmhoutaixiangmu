﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改密码</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="/static/style/adminStyle.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><i class="user"></i><em>修改密码</em></span>
    </div>
    <table class="noborder">
        <tr>
            <td width="15%" style="text-align:right;">账号：</td>
            <td><input type="text" class="textBox length-middle"/></td>
        </tr>
        <tr>
            <td style="text-align:right;">邮箱：</td>
            <td><input type="text" class="textBox length-middle"/></td>
        </tr>
        <tr>
            <td style="text-align:right;">旧密码：</td>
            <td><input type="password" class="textBox length-middle"/></td>
        </tr>
        <tr>
            <td style="text-align:right;">新密码：</td>
            <td><input type="password" class="textBox length-middle"/></td>
        </tr>
        <tr>
            <td style="text-align:right;">再次确认密码：</td>
            <td><input type="password" class="textBox length-middle"/></td>
        </tr>
        <tr>
            <td style="text-align:right;"></td>
            <td>
                <input type="submit" class="tdBtn" value="保存"/>
                <input type="button" class="tdBtn" value="返回" onclick="javascript:history.back(-1)">
            </td>
        </tr>
    </table>
</div>
</body>
</html>