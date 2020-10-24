<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>header</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="/static/style/adminStyle.css" rel="stylesheet" type="text/css"/>
</head>
<script type="text/javascript" src="/static/js/jquery-1.9.0.min.js"></script>
<body>
<div class="header">
    <div class="logo">
        <img src="/static/images/logo1.jpg" title="在哪儿"/>
    </div>
    <div class="fr top-link">
        <a href="#" target="_blank" title="访问站点"><i class="shopLinkIcon"></i><span>访问站点</span></a>
        <a href="/static/jsp/user_list.jsp" target="mainCont" title="DeathGhost"><i class="adminIcon"></i><span>${admins.name}</span></a>
        <a href="#" title="清除缓存"><i class="clearIcon"></i><span>清除缓存</span></a>
        <a href="/static/jsp/edit_user.jsp" target="mainCont" title="修改密码"><i class="revisepwdIcon"></i><span>修改密码</span></a>
        <a href="#" title="安全退出" style="background:rgb(60,60,60);"><i
                    class="quitIcon"></i><span>安全退出</span></a>
    </div>
</div>
</body>
</html>
