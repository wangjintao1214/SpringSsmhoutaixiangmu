<%--
  Created by IntelliJ IDEA.
  User: 20254
  Date: 2020/10/15
  Time: 8:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>会员资金变动明细</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/static/style/adminStyle.css" rel="stylesheet" type="text/css" />
    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/public.js"></script>
</head>
<body>
<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><i class="account_user"></i><em>用户资金变动明细</em></span>
        <span class="modular fr"><a class="pt-link-btn">当前用户：“DeathGhost”，可用资金￥5000000.00</a></span>
    </div>
    <table class="list-style Interlaced">
        <tr>
            <th>变动服务项目</th>
            <th>帐户变动时间</th>
            <th>可用资金帐户</th>
            <th>冻结资金帐户</th>
            <th>帐户变动原因</th>
        </tr>
        <tr>
            <td class="center">201504182513</td>
            <td class="center">2015-04-18</td>
            <td class="center"><i>-</i><span>￥</span><b>139.00</b></td>
            <td class="center"><i>-</i><span>￥</span><b>10.00</b></td>
            <td>
                <div style="width:350px;">
                    订单付款
                </div>
            </td>
        </tr>
        <tr>
            <td class="center">充值</td>
            <td class="center">2015-04-18</td>
            <td class="center"><i>-</i><span>￥</span><b>200.00</b></td>
            <td class="center"><i>-</i><span>￥</span><b>10.00</b></td>
            <td>
                <div style="width:350px;">
                    充值
                </div>
            </td>
        </tr>
        <tr>
            <td class="center">管理员/系统操作</td>
            <td class="center">2015-04-18</td>
            <td class="center"><i>-</i><span>￥</span><b>20.00</b></td>
            <td class="center"><i>-</i><span>￥</span><b>10.00</b></td>
            <td width="350">
                <div style="width:350px;">
                    平台入驻冻结保证金，操作员：***
                </div>
            </td>
        </tr>
    </table>
    <!-- BatchOperation -->
    <div style="overflow:hidden;">
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
