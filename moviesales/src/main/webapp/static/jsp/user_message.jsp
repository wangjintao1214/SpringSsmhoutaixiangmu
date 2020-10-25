<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>会员留言</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="/static/style/adminStyle.css" rel="stylesheet" type="text/css"/>
    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/public.js"></script>
</head>
<body>
<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><i class="user"></i><em>会员留言</em></span>
    </div>
    <table class="list-style Interlaced">
        <tr>
            <th>会员账号</th>
            <th>留言时间</th>
            <th>处理状态</th>
            <th>留言内容</th>
            <th>管理员回复</th>
            <th>操作</th>
        </tr>
        <%--<tr>
            <td class="center">DeathGhost</td>
            <td class="center">2015-04-18 10:39</td>
            <td class="center">未处理</td>
            <td width="300">
                <div style="width:400px;height:50px;overflow:scroll;overflow-x:hidden;">
                    这里是留言内容
                </div>
            </td>
            <td width="300">
                <div style="width:400px;height:50px;overflow:scroll;overflow-x:hidden;">
                    这里是留言内容
                </div>
            </td>
            <td class="center">
                <a href="/static/jsp/reply_message.jsp" class="inline-block" title="回复"><img
                        src="/static/images/icon_title.gif"/></a>
                <a class="inline-block" title="移除"><img src="/static/images/icon_drop.gif"/></a>
            </td>
        </tr>--%>
    </table>
    <!-- BatchOperation -->
</div>
</body>
</html>