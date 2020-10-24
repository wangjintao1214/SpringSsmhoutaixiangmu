<%--
  Created by IntelliJ IDEA.
  User: LHX
  Date: 2020/10/15
  Time: 9:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>订单列表</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/static/style/adminStyle.css" rel="stylesheet" type="text/css" />
    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/public.js"></script>
</head>
<body>
<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><i class="order"></i><em>订单列表</em></span>
    </div>
    <div class="operate">
        <img src="/static/images/icon_search.gif"/>
        <input type="text" class="textBox length-long" placeholder="请输入电影名..." name="movieName"/>
        <input type="button" value="查询" class="tdBtn" onclick="moviesel()"/>
    </div>
    <table class="list-style Interlaced movie">
        <tr>
            <td>订单编号</td>
            <td>用户名字</td>
            <td>影院ID</td>
            <td>放映厅</td>
            <td>电影名</td>
            <td>总价</td>
            <td>座位</td>

        </tr>

    </table>
</div>
</body>
</html>
<script type="text/javascript">
    $(document).ready(function () {
       moviesel();
    })
    function moviesel() {
        $(".movie tr:gt(0)").remove();
        var movieName=$("[name='movieName']").val();
        var json={
            movieName:movieName
        }
        var A="";
        $.post("/sel",json,function (result) {
            if(result.status=="true"){
                $.each(result.list,function (i,v) {
                    // A=(v.movieSeat).replaceAll("\\_", "排").replaceAll("\\_", "座,").replaceAll(",$","");
                    var A=(v.movieSeat).replaceAll("_","排").replaceAll(",","座,");
                    var B=A.slice(0,length-1);
                    $(".movie").append("<tr><td>"+v.movieId+"</td><td>"+v.userName+"</td><td>"+v.movieYingchengid+"</td><td>"+v.movieRoom+"</td><td>"+v.movieName+"</td><td>"+v.moviePrice+"</td><td>"+B+"</td></tr>")
                    /*alert(A);*/
                })
            }
        },"json")
    }
</script>