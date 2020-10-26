<%--
  Created by IntelliJ IDEA.
  User: LHX
  Date: 2020/10/15
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>产品分类</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="/static/style/adminStyle.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><i></i><em>产品分类</em></span>
        <span class="modular fr"><a href="/static/jsp/add_category.jsp" class="pt-link-btn">+添加新分类</a></span>
    </div>

    <table class="list-style">
        <tr>
            <th>分类名称</th>
            <th>产品数量</th>
            <th>单位</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${pageInfo.list}" var="list">
        <tr>
            <%--  <td>
                  <input type="checkbox"/>
                  <span>西餐</span>
              </td>--%>
            <td class="center">${list.name}</td>
            <td class="center">${list.num}</td>
            <td class="center">${list.unit}</td>
            <%-- <td class="center"><img src="/static/images/yes.gif"/></td>
             <td class="center"><input type="text" value="0" style="width:50px;text-align:center;"/></td>--%>
            <td class="center"><a class="block" title="移除" href="/del_category?id=${list.id}"><img src="/static/images/icon_trash.gif"/></a></td>
        </tr>
        </c:forEach>
    </table>
    <span style="text-align:right;color: red">${mgs}</span>
    <div class="turnPage center fr">
        <a>共${pageInfo.total}条  第${pageInfo.pageNum}/${pageInfo.pages}页</a>
        <a href="/product_category?pageIndex=${pageInfo.firstPage}">首页</a>
        <c:if test="${pageInfo.hasPreviousPage}">
            <a href="/product_category?pageIndex=${pageInfo.prePage}">上一页</a>
        </c:if>
        <c:forEach items="${pageInfo.navigatepageNums}" var="i">
            <a href="/product_category?pageIndex=${i}">${i}</a>
        </c:forEach>
        <c:if test="${pageInfo.hasNextPage}">
            <a href="/product_category?pageIndex=${pageInfo.nextPage}">下一页</a>
        </c:if>
        <a href="/product_category?pageIndex=${pageInfo.lastPage}">尾页</a>
    </div>
    <%--<!-- BatchOperation -->
    <div style="overflow:hidden;">
        <!-- Operation -->
        <div class="BatchOperation fl">
            <input type="checkbox" id="del"/>
            <label for="del" class="btnStyle middle">全选</label>
            <input type="button" value="批量删除" class="btnStyle"/>
        </div>--%>
    <!-- turn page -->

</div>
</div>
</body>
</html>
