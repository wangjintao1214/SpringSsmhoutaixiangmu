<%--
  Created by IntelliJ IDEA.
  User: 20254
  Date: 2020/10/15
  Time: 8:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="robots" content="nofollow"/>
    <link href="/static/style/adminStyle.css" rel="stylesheet" type="text/css" />
    <style>
        body{width:100%;height:100%;overflow:hidden;background:url(/static/images/pc_loginBg.jpg) no-repeat;background-size:cover;position:absolute;}
    </style>
    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/Particleground.js"></script>
</head>
<body>
<section class="loginform">
    <h1>后台管理系统</h1>
    <form action="/dologin" method="post">
        <ul>
            <li>
                <label>账号：</label>
                <input type="text" class="textBox" placeholder="管理员账号" name="name"/>
               <%-- <span style="color: red">${msg}</span>--%>
            </li>
            <li>
                <label>密码：</label>
                <input type="password" class="textBox" placeholder="登陆密码" name="passwd"/>
            </li>
            <li>
                <input type="submit" value="立即登陆"/>
            </li>
        </ul>
        <p style="color: red" align="center">${msg}</p>
    </form>
</section>
</body>
</html>
<script>
    $(document).ready(function() {
        $('body').particleground({
            dotColor:'green',
            lineColor:'#c9ec6e'
        });
        $('.intro').css({
            'margin-top': -($('.intro').height() /2)
        });
        $("form").submit(function () {
            var name=$("[name='name']").val();
            var passwd=$("[name='passwd']").val();
            if(name==""){
                alert("用户名不能为空！！！！");
                return false;
            }
            if(passwd==""){
                alert("用户名密码不能为空！！！！")
                return false;
            }
            return true;
        })
        /* $(".loginform input[type='button']").click(function(){
             alert("登陆成功，程序对接时将其删除，此处测试！");
             location.href="/static/jsp/index.jsp";
         });*/
    });
</script>
