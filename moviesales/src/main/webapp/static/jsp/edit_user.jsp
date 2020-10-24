<%--
  Created by IntelliJ IDEA.
  User: LHX
  Date: 2020/10/15
  Time: 9:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>编辑会员资料</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/static/style/adminStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><i class="edit_user"></i><em>编辑会员资料</em></span>
    </div>
    <form action="/upd" method="post">
        <table class="list-style">
            <tr>
                <td style="width:15%;text-align:right;">会员昵称：</td>
                <td><input type="text" class="textBox length-middle" value="${admins.name}" name="name"/></td>
                <td><input type="hidden" class="textBox length-middle" value="${admins.id}" name="id"/></td>
            </tr>
            <tr>
                <td style="text-align:right;">电子邮件：</td>
                <td><input type="text" class="textBox length-middle" value="${admins.email}" name="email"/></td>
            </tr>
            <tr>
                <td style="text-align:right;">手机号码：</td>
                <td><input type="text" class="textBox length-middle" value="${admins.phone}" name="phone"/></td>
            </tr>
            <tr>
                <td style="text-align:right;">会员等级：</td>
                <td>
                    <select class="textBox" name="grade">
                        <option value="0">请选择会员等级</option>
                        <option <c:if test="${admins.grade==1}"> selected </c:if> value="1">白金会员</option>
                        <option <c:if test="${admins.grade==2}"> selected </c:if> value="2">黄金会员</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td style="text-align:right;">密码：</td>
                <td><input type="password" <%--class="textBox length-middle"--%> value="${admins.passwd}" name="passwd"/></td>
            </tr>
            <tr>
                <td style="text-align:right;"></td>
                <td>
                    <input type="submit" class="tdBtn" value="更新保存"/>
                    <input type="button" value="返回" onclick="javascript:history.back(-1)">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
