<%--
  Created by IntelliJ IDEA.
  User: LHX
  Date: 2020/10/15
  Time: 9:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台管理中心起始页面</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/static/style/adminStyle.css" rel="stylesheet" type="text/css" />
    <style>html,body{width:100%;height:100%;}</style>
    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/eject.js"></script>
    <script src="/static/js/public.js"></script>
</head>
<body>
<div class="wrap start-page">
    <h1><i class="home-icon"></i>欢迎回到星空影院管理中心</h1>
    <dl>
        <dt>订单统计信息</dt>
        <dd>
            <ul>
                <li>
                    <span>待发货订单：</span>
                    <span>539</span>
                </li>
                <li>
                    <span>未确认订单：</span>
                    <span>23</span>
                </li>
                <li>
                    <span>已成交订单：</span>
                    <span>1282</span>
                </li>
            </ul>
        </dd>
    </dl>

    <dl>
        <dt>商户统计信息</dt>
        <dd>
            <ul>
                <li>
                    <span>店铺总数量：</span>
                    <span>1252</span>
                </li>
                <li>
                    <span>商品总数量：</span>
                    <span>13252</span>
                </li>
                <li>
                    <span>在线实时交易总计：</span>
                    <span>1282.00元</span>
                </li>
                <%--<li>
                    <span>酒吧类店铺：</span>
                    <span>128家</span>
                </li>
                <li>
                    <span>家政服务类店铺：</span>
                    <span>300家</span>
                </li>
                <li>
                    <span>外卖类店铺：</span>
                    <span>458家</span>
                </li>--%>
            </ul>
        </dd>
    </dl>

    <dl>
        <dt>会员统计信息</dt>
        <dd>
            <ul>
                <li>
                    <span>黄金会员：</span>
                    <span>356</span>
                </li>
                <li>
                    <span>白金会员：</span>
                    <span>432</span>
                </li>
                <li>
                    <span>商户会员：</span>
                    <span>128</span>
                </li>
            </ul>
        </dd>
    </dl>

    <dl>
        <dt>访问统计</dt>
        <dd>
            <ul>
                <li>
                    <span>今日访问：</span>
                    <span>1356</span>
                </li>
                <li>
                    <span>当前在线人数：</span>
                    <span>98</span>
                </li>
                <li>
                    <span>最新留言：</span>
                    <span>1</span>
                </li>
            </ul>
        </dd>
    </dl>

    <dl>
        <dt>系统信息</dt>
        <dd>
            <ul>
                <li>
                    <span>服务器操作系统：</span>
                    <span>WINNT(127.0.0.1)</span>
                </li>
                <li>
                    <span>WEB服务器：</span>
                    <span>APACHE2.2.9</span>
                </li>
                <li>
                    <span>MySQL 版本：</span>
                    <span>5.5.20</span>
                </li>
                <li>
                    <span>安全模式：</span>
                    <span>是</span>
                </li>
                <li>
                    <span>安全模式GID:：</span>
                    <span>是</span>
                </li>
                <li>
                    <span>时区设置：</span>
                    <span>Europe/Paris</span>
                </li>
                <li>
                    <span>编码：</span>
                    <span>UTF-8</span>
                </li>
            </ul>
        </dd>
    </dl>
</div>
</body>
</html>
