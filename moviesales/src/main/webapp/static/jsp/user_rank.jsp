<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>会员等级</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="/static/style/adminStyle.css" rel="stylesheet" type="text/css"/>
    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/public.js"></script>
</head>
<body>
<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><i class="user"></i><em>会员等级</em></span>
        <span class="modular fr"><a href="/tohyadd" class="pt-link-btn">+添加会员等级</a></span>
    </div>
    <table class="list-style Interlaced">
        <tr>
            <th>会员类型</th>
            <th>等级名称</th>
            <th>等级折扣</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${requestScope.list}" var="list">
            <tr>
                <td>${list.type}</td>
                <td>${list.grade}</td>
                <td>${list.gradeIscount}</td>
                <td>
                    <a href="/tohyupd?id=${list.id}" class="inline-block" title="编辑"><img src="/static/images/icon_edit.gif"/></a>
                    <a href="/hydel?id=${list.id}" class="inline-block" title="删除"><img src="/static/images/icon_drop.gif"/></a>
                </td>
            </tr>
        </c:forEach>
        <%--<tr>
            <td>
                <img src="/static/images/user_02.png"/>
                <span class="middle">普通用户组</span>
            </td>
            <td class="center"><img src="#" class="thumbnail"/></td>
            <td class="center">普通会员</td>
            <td class="center">88%</td>
            <td class="center">
                <a class="block">
                    <img src="/static/images/icon_drop.gif"/>
                </a>
            </td>
        </tr>
        <tr>
            <td>
                <img src="/static/images/user_01.png"/>
                <span class="middle">特殊用户组</span>
            </td>
            <td class="center"><img src="#" class="thumbnail"/></td>
            <td class="center">商户会员</td>
            <td class="center">85%</td>
            <td class="center">
                <a class="block">
                    <img src="/static/images/icon_drop.gif"/>
                </a>
            </td>
        </tr>--%>
    </table>
</div>
</body>
</html>