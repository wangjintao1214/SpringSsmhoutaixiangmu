<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: LHX
  Date: 2020/10/15
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>产品列表</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="/static/style/adminStyle.css" rel="stylesheet" type="text/css"/>
    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/public.js"></script>
</head>
<body>
<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><i></i><em>产品列表</em></span>
        <span class="modular fr"><a href="/static/jsp/edit_product1.jsp" class="pt-link-btn">+添加商品</a></span>
    </div>
    <div class="operate">
        <form>
            <%-- <select class="inline-select">
                 <option>A店铺</option>
                 <option>B店铺</option>
             </select>--%>
            <input type="text" name="productName" class="textBox length-long" placeholder="输入产品名称..."/>
            <input type="button" value="查询" class="tdBtn" onclick="show()"/>
        </form>
    </div>
    <table class="list-style Interlaced">
        <tr>
            <td>ID编号</td>
            <td>产品</td>
            <td>名称</td>
            <td>市场价</td>
            <td>会员价</td>
            <td>库存</td>
            <td>商品类型</td>
            <td>操作</td>
        </tr>
        <c:forEach var="commodity" items="${pageInfo.list}">
        <tr>
            <td>${commodity.id}</td>
            <td>
                <div><img class="commodity_img" alt="" style="width: 80px" src="/static/uploadFiles/${commodity.picture}"/></div>
            </td>
            <td>${commodity.name}</td>
            <td>${commodity.marketValue}</td>
            <td>${commodity.membershipPrice}</td>
            <td>${commodity.num}</td>
            <td>${commodity.type}</td>
            <td><a href="javascript:void(0)" onclick="update(${commodity.id})" title="编辑"><img
                    src="/static/images/icon_edit.gif"/></a>
                <a href="javascript:void(0)" onclick="del(${commodity.id})" title="删除" ><img src="/static/images/icon_drop.gif"/></a>
            </td>
        </tr>
        </c:forEach>
    </table>
        <div  class="turnPage center fr">
            <a>共${pageInfo.total}条  第${pageInfo.pageNum}/${pageInfo.pages}页</a>
            <a href="showCommodity?pageNum=${pageInfo.firstPage}">首页
            </a>
            <c:if test="${pageInfo.hasPreviousPage}">
                <a href="showCommodity?pageNum=${pageInfo.prePage}">上一页</a>
            </c:if>
            <c:forEach items="${pageInfo.navigatepageNums}" var="i">
                <a href="showCommodity?pageNum=${i}">${i}</a>
            </c:forEach>
            <c:if test="${pageInfo.hasNextPage}">
                <a href="showCommodity?pageNum=${pageInfo.nextPage}">下一页</a>
            </c:if>
            <a href="/showCommodity?pageNum=${pageInfo.lastPage}">尾页</a>
        </div>
</div>
<div>${msg}</div>
<script>
    function update(id) {
        alert(id);
        location.href = "/updateCommdity/" + id;

    }

    function show() {//按照条件查询
        location.href = "/showCommodity";
    }

    function del(id) {
        alert(id);
        location.href = "/delCommodity/" + id;
    }
</script>
</body>
</html>