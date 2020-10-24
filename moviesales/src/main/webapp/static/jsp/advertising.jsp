<%--
  Created by IntelliJ IDEA.
  User: 20254
  Date: 2020/10/15
  Time: 8:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>广告位</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/static/style/adminStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><i class="settings"></i><em>广告位</em></span>
    </div>
    <form action="advertising_list.jsp">
        <table class="noborder">
            <tr>
                <td style="width:15%;text-align:right;"><b>广告投放位置：</b></td>
                <td>
                    <select class="textBox">
                        <option>首页导航下方通栏</option>
                        <option>文章详情侧边栏</option>
                        <option>具体根据客户需求吧</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td style="text-align:right;"><b>媒介类型：</b></td>
                <td>
                    <select class="textBox">
                        <option>图片</option>
                        <option>代码</option>
                        <option>文字</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td style="text-align:right;"><b>上传图片：</b></td>
                <td><input type="file"/></td>
            </tr>
            <tr>
                <td style="text-align:right;"><b>输入广告代码：</b></td>
                <td><textarea class="textarea"></textarea></td>
            </tr>
            <tr>
                <td style="text-align:right;"></td>
                <td><input type="submit" value="保存" class="tdBtn"/></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
