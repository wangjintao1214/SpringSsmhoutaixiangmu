<%--
  Created by IntelliJ IDEA.
  User: 20254
  Date: 2020/10/15
  Time: 8:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加会员等级</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/static/style/adminStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><i class="user"></i><em>添加会员等级</em></span>
        <span class="modular fr"><a href="/static/jsp/user_rank.jsp" class="pt-link-btn">返回等级列表</a></span>
    </div>
    <table class="noborder">
        <tr>
            <td style="width:15%;text-align:right;">会员等级名称：</td>
            <td>
                <input type="text" class="textBox length-middle"/>
            </td>
        </tr>
        <tr>
            <td style="width:15%;text-align:right;">会员等级图标：</td>
            <td><input type="file"/></td>
        </tr>
        <tr>
            <td style="width:15%;text-align:right;">会员等级折扣：</td>
            <td><input type="text" class="textBox length-short"/></td>
        </tr>
        <tr>
            <td style="width:15%;text-align:right;">会员类型组：</td>
            <td>
                <input type="checkbox" id="userGroup"/>
                <label for="userGroup" class="middle">是否为特殊会员组</label>
            </td>
        </tr>
        <tr>
            <td style="width:15%;text-align:right;"></td>
            <td>
                <input type="submit" value="确认" class="tdBtn"/>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
