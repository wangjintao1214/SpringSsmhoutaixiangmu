<%--
  Created by IntelliJ IDEA.
  User: LHX
  Date: 2020/10/15
  Time: 9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>左侧导航</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/static/style/adminStyle.css" rel="stylesheet" type="text/css" />
    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/public.js"></script>
</head>
<body style="background:#313131">
<div class="menu-list">
    <a href="/static/jsp/main.jsp" target="mainCont" class="block menu-list-title center" style="border:none;margin-bottom:8px;color:#fff;">起始页</a>
    <ul>
        <li class="menu-list-title">
            <span>订单管理</span>
            <i>◢</i>
        </li>
        <li>
            <ul class="menu-children">
                <li><a href="/tosel" title="商品列表" target="mainCont">订单列表</a></li>
            </ul>
        </li>

        <li class="menu-list-title">
            <span>商品管理</span>
            <i>◢</i>
        </li>
        <li>
            <ul class="menu-children">
                <li><a href="/static/jsp/product_list.jsp" title="商品列表" target="mainCont">商品列表</a></li>
                <li><a href="/product_category" title="商品分类" target="mainCont">商品分类</a></li>
                <%--<li><a href="/static/jsp/recycle_bin.jsp" title="商品分类" target="mainCont">商品回收站</a></li>--%>
            </ul>
        </li>

        <li class="menu-list-title">
            <span>会员管理</span>
            <i>◢</i>
        </li>
        <li>
            <ul class="menu-children">
                <li><a href="/tosels" title="会员列表" target="mainCont">会员列表</a></li>
                <li><a href="/static/jsp/add_user.jsp" title="添加会员" target="mainCont">添加会员</a></li>
                <li><a href="/hyselect" title="会员等级" target="mainCont">会员等级</a></li>
                <li><a href="/static/jsp/user_message.jsp" title="会员留言" target="mainCont">会员留言</a></li>
            </ul>
        </li>

       <%-- <li class="menu-list-title">
            <span>系统设置</span>
            <i>◢</i>
        </li>
        <li>
            <ul class="menu-children">
                <li><a href="/static/jsp/basic_settings.jsp" title="站点基本设置" target="mainCont">站点基本设置</a></li>
                <li><a href="/static/jsp/admin_list.jsp" title="站点基本设置" target="mainCont">站点管理员</a></li>
            </ul>
        </li>

        <li class="menu-list-title">
            <span>广告管理</span>
            <i>◢</i>
        </li>
        <li>
            <ul class="menu-children">
                <li><a href="/static/jsp/advertising_list.jsp" title="站点基本设置" target="mainCont">广告列表</a></li>
            </ul>
        </li>
--%>
    </ul>
</div>
<%--<div class="menu-footer">© 更多模板：<a href="http://www.mycodes.net/" target="_blank">源码之家</a></div>--%>
</body>
</html>
