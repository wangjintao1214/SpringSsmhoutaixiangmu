<%--
  Created by IntelliJ IDEA.
  User: LHX
  Date: 2020/10/27
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>编辑会员等级</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/static/style/adminStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><i class="user"></i><em>编辑会员等级</em></span>
    </div>
    <form action="/dohyupd?id=${list.id}" method="post">
        <table class="noborder">
            <tr>
                <td style="width:15%;text-align:right;">会员等级名称：</td>
                <td>
                    <input type="text" class="textBox length-middle" value="${list.type}" name="type"/>
                </td>
            </tr>
            <tr>
                <td style="width:15%;text-align:right;">会员等级折扣：</td>
                <td><input type="text" class="textBox length-short" value="${list.gradeIscount}" name="gradeIscount"/></td>
            </tr>
            <tr>
                <td style="width:15%;text-align:right;">会员类型组：</td>
                <td>
                    <input type="text" class="textBox middle" value="${list.grade}" name="grade">
                </td>
            </tr>
            <tr>
                <td style="width:15%;text-align:right;"></td>
                <td>
                    <input type="submit" value="更新保存" class="tdBtn"/>
                    <input type="button" value="返回" class="tdBtn" onclick="javascript:history.back(-1)">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>

