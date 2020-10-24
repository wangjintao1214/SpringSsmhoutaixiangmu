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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/static/style/adminStyle.css" rel="stylesheet" type="text/css" />
    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/public.js"></script>
</head>
<body>
<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><i></i><em>产品列表</em></span>
        <span class="modular fr"><a href="/static/jsp/edit_product.jsp" class="pt-link-btn">+添加商品</a></span>
    </div>
    <div class="operate">
        <form>
            <select class="inline-select">
                <option>A店铺</option>
                <option>B店铺</option>
            </select>
            <input type="text" class="textBox length-long" placeholder="输入产品名称..."/>
            <input type="button" value="查询" class="tdBtn"/>
        </form>
    </div>
    <table class="list-style Interlaced">
        <tr>
            <th>ID编号</th>
            <th>产品</th>
            <th>名称</th>
            <th>市场价</th>
            <th>会员价</th>
            <th>库存</th>
            <th>精品</th>
            <th>新品</th>
            <th>热销</th>
            <th>操作</th>
        </tr>
        <tr>
            <td>
     <span>
     <input type="checkbox" class="middle children-checkbox"/>
     <i>0</i>
     </span>
            </td>
            <td class="center pic-area"><img src="#" class="thumbnail"/></td>
            <td class="td-name">
                <span class="ellipsis td-name block">这是产品或服务名称(宽度350px,样式自动截取，以省略号表示哦，程序可以处理“截取字符串”)</span>
            </td>
            <td class="center">
     <span>
      <i>￥</i>
      <em>0.00</em>
     </span>
            </td>
            <td class="center">
     <span>
      <i>￥</i>
      <em>0.00</em>
     </span>
            </td>
            <td class="center">
     <span>
      <em>589</em>
      <i>件</i>
     </span>
            </td>
            <td class="center"><img src="/static/images/yes.gif"/></td>
            <td class="center"><img src="/static/images/no.gif"/></td>
            <td class="center"><img src="/static/images/yes.gif"/></td>
            <td class="center">
                <a href="http://www.baidu.com/跳转至前台页面哦" title="查看" target="_blank"><img src="/static/images/icon_view.gif"/></a>
                <a href="/static/jsp/edit_product.jsp" title="编辑"><img src="/static/images/icon_edit.gif"/></a>
                <a title="删除"><img src="/static/images/icon_drop.gif"/></a>
            </td>
        </tr>

        <tr>
            <td>
     <span>
     <input type="checkbox" class="middle children-checkbox"/>
     <i>0</i>
     </span>
            </td>
            <td class="center pic-area"><img src="#" class="thumbnail"/></td>
            <td class="td-name">
                <span class="ellipsis td-name block">这是产品或服务名称(宽度350px,样式自动截取，以省略号表示哦，程序可以处理“截取字符串”)</span>
            </td>
            <td class="center">
     <span>
      <i>￥</i>
      <em>0.00</em>
     </span>
            </td>
            <td class="center">
     <span>
      <i>￥</i>
      <em>0.00</em>
     </span>
            </td>
            <td class="center">
     <span>
      <em>589</em>
      <i>件</i>
     </span>
            </td>
            <td class="center"><img src="/static/images/yes.gif"/></td>
            <td class="center"><img src="/static/images/no.gif"/></td>
            <td class="center"><img src="/static/images/yes.gif"/></td>
            <td class="center">
                <a title="查看" target="_blank"><img src="/static/images/icon_view.gif"/></a>
                <a title="编辑"><img src="/static/images/icon_edit.gif"/></a>
                <a title="删除"><img src="/static/images/icon_drop.gif"/></a>
            </td>
        </tr>

        <tr>
            <td>
     <span>
     <input type="checkbox" class="middle children-checkbox"/>
     <i>0</i>
     </span>
            </td>
            <td class="center pic-area"><img src="#" class="thumbnail"/></td>
            <td class="td-name">
                <span class="ellipsis td-name block">这是产品或服务名称(宽度350px,样式自动截取，以省略号表示哦，程序可以处理“截取字符串”)</span>
            </td>
            <td class="center">
     <span>
      <i>￥</i>
      <em>0.00</em>
     </span>
            </td>
            <td class="center">
     <span>
      <i>￥</i>
      <em>0.00</em>
     </span>
            </td>
            <td class="center">
     <span>
      <em>589</em>
      <i>件</i>
     </span>
            </td>
            <td class="center"><img src="/static/images/yes.gif"/></td>
            <td class="center"><img src="/static/images/no.gif"/></td>
            <td class="center"><img src="/static/images/yes.gif"/></td>
            <td class="center">
                <a title="查看" target="_blank"><img src="/static/images/icon_view.gif"/></a>
                <a title="编辑"><img src="/static/images/icon_edit.gif"/></a>
                <a title="删除"><img src="/static/images/icon_drop.gif"/></a>
            </td>
        </tr>
    </table>
    <!-- BatchOperation -->
    <div style="overflow:hidden;">
        <!-- Operation -->
        <div class="BatchOperation fl">
            <input type="checkbox" id="del"/>
            <label for="del" class="btnStyle middle">全选</label>
            <input type="button" value="批量删除" class="btnStyle"/>
        </div>
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