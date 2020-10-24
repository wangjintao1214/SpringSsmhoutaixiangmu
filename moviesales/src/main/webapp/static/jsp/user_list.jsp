<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>会员列表</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="/static/style/adminStyle.css" rel="stylesheet" type="text/css"/>
    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/public.js"></script>
</head>
<script type="text/javascript" src="/static/js/jquery-1.9.0.min.js"></script>
<body>
<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><em>会员列表</em></span>
        <span class="modular fr"><a href="/toadd" class="pt-link-btn">+添加新会员</a></span>
    </div>
    <div class="operate">
       <%-- <form action="/dosel" method="post">
        </form>--%>
           <select class="inline-select" name="grade">
               <option value="0">选择会员等级</option>
               <option value="1">白金会员</option>
               <option value="2">黄金会员</option>
           </select>
           <input type="text" class="textBox length-long" placeholder="输入会员姓名" name="name2"/>
           <input type="button" value="查询" class="tdBtn" onclick="usersel()"/>
    </div>
    <table class="list-style Interlaced user">
        <tr>
            <td>编号</td>
            <td>会员昵称</td>
            <td>邮件地址</td>
            <td>手机号码</td>
            <td>注册日期</td>
            <td>操作</td>
        </tr>
        <%--<c:forEach items="${list}" var="list">--%>
            <%--<tr>--%>
                <%--<td>${list.id}</td>--%>
                <%--<td>${list.name}</td>--%>
                <%--<td>${list.email}</td>--%>
                <%--<td>${list.phone}</td>--%>
                <%--&lt;%&ndash;<td>${list.createdate}</td>&ndash;%&gt;--%>
                <%--<td>--%>
                   <%-- <a href="/static/edit_user.jsp" class="inline-block" title="编辑"><img
                        src="/static/images/icon_edit.gif"/></a>
                    <a class="inline-block" title="删除"><img src="/static/images/icon_drop.gif"/></a>--%>
                <%--</td>--%>
            <%--</tr>--%>
        <%--</c:forEach>--%>
    </table>
    <p style="color: red;" align="center">${msg}</p>
</div>
</body>
</html>
<script type="text/javascript">
    $(document).ready(function () {
        usersel();
    })
    function usersel() {
        $(".user tr:gt(0)").remove();
        var grade=$("[name='grade']").val();
        var name=$("[name='name2']").val();
        var json={
            grade:grade,
            name:name
        }
        $.post("/dosel",json,function (result) {
            console.log(result.list);
            if(result.status=="true"){
                    $.each(result.list,function (i,v) {
                    $(".user").append("<tr><td>"+v.id+"</td><td>"+v.name+"</td><td>"+v.email+"</td><td>"+v.phone+"</td><td>"+v.createdate+"</td><td> <a href=\"/toupd?id="+v.id+"\" class=\"inline-block\" title=\"编辑\"><img\n" +
                        "                        src=\"/static/images/icon_edit.gif\"/></a>\n" +
                        "                    <a href='/del?id="+v.id+"' class=\"inline-block\" title=\"删除\"><img src=\"/static/images/icon_drop.gif\"/></a></td></tr>")
                    /*alert(A);*/
                })
            }
        },"json")
    }
</script>