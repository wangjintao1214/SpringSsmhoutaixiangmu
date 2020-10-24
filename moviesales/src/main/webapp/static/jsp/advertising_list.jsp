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
    <title>广告列表</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/static/style/adminStyle.css" rel="stylesheet" type="text/css" />
    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/public.js"></script>
</head>
<body>
<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><i></i><em>广告列表</em></span>
        <span class="modular fr"><a href="/static/jsp/advertising.jsp" class="pt-link-btn">+添加广告</a></span>
    </div>
    <table class="list-style Interlaced">
        <tr>
            <th>广告名称</th>
            <th>广告位置</th>
            <th>媒介类型</th>
            <th>操作</th>
        </tr>
        <tr>
            <td>五一劳动节</td>
            <td>首页导航下方通栏</td>
            <td>图片</td>
            <td class="center">
                <a href="/static/jsp/advertising.jsp" title="编辑"><img src="/static/images/icon_edit.gif"/></a>
                <a title="删除"><img src="/static/images/icon_drop.gif"/></a>
            </td>
        </tr>
    </table>
    <!-- BatchOperation -->
    <div style="overflow:hidden;">
        <!-- Operation -->
        <div class="BatchOperation fl">
            <input type="checkbox" id="del"/>
            <label for="del" class="btnStyle middle">全选</label>
            <input type="button" value="批量删除" class="btnStyle"/>
        </div>
        <!-- turn page -->
        <div class="turnPage center fr">
            <a>第一页</a>
            <a>1</a>
            <a>最后一页</a>
        </div>
    </div>
</div>
</body>
</html>
