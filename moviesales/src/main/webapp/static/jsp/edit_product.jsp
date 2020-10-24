<%--
  Created by IntelliJ IDEA.
  User: LHX
  Date: 2020/10/15
  Time: 8:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>产品列表</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/static/style/adminStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="wrap">
    <div class="page-title">
        <span class="modular fl"><i class="add"></i><em>编辑/添加产品</em></span>
        <span class="modular fr"><a href="/static/jsp/product_list.jsp" class="pt-link-btn">产品列表</a></span>
    </div>
    <form action="/static/jsp/product_list.jsp">
        <table class="list-style">
            <tr>
                <td style="text-align:right;width:15%;">产品名称：</td>
                <td><input type="text" class="textBox length-long"/></td>
            </tr>
            <tr>
                <td style="text-align:right;">产品分类：</td>
                <td>
                    <select class="textBox">
                        <optgroup label="西餐">
                            <option>面包</option>
                        </optgroup>
                        <optgroup label="中餐">
                            <option>面条</option>
                        </optgroup>
                    </select>
                </td>
            </tr>
            <tr>
                <td style="text-align:right;">市场价：</td>
                <td>
                    <input type="text" class="textBox length-short"/>
                    <span>元</span>
                </td>
            </tr>
            <tr>
                <td style="text-align:right;">会员价：</td>
                <td>
                    <input type="text" class="textBox length-short"/>
                    <span>元</span>
                </td>
            </tr>
            <tr>
                <td style="text-align:right;">库存：</td>
                <td>
                    <input type="text" class="textBox length-short"/>
                    <span>盘</span>
                </td>
            </tr>
            <tr>
                <td style="text-align:right;">产品关键词：</td>
                <td><input type="text" class="textBox length-long"/></td>
            </tr>
            <tr>
                <td style="text-align:right;">产品描述：</td>
                <td><input type="text" class="textBox length-long"/></td>
            </tr>
            <tr>
                <td style="text-align:right;">推荐至：</td>
                <td>
                    <input type="checkbox" name="tuijian" id="jingpin"/>
                    <label for="jingpin">精品</label>
                    <input type="checkbox" name="tuijian" id="xinpin"/>
                    <label for="xinpin">新品</label>
                    <input type="checkbox" name="tuijian" id="rexiao"/>
                    <label for="rexiao">热销</label>
                </td>
            </tr>

            <tr>
                <td style="text-align:right;">产品缩图片：</td>
                <td>
                    <input type="file" id="suoluetu" class="hide"/>
                    <label for="suoluetu" class="labelBtnAdd">+</label>
                    <img src="#" width="60" height="60" class="mlr5"/>
                </td>
            </tr>

            <tr>
                <td style="text-align:right;">产品主图：</td>
                <td>
                    <input type="file"  multiple="multiple" id="chanpinzhutu" class="hide"/>
                    <label for="chanpinzhutu" class="labelBtn2">本地上传(最多选择N张)</label>
                </td>
            </tr>
            <tr>
                <td style="text-align:right;"></td>
                <td>
                    <img src="#" width="80" height="80"/>
                    <img src="#" width="80" height="80"/>
                    <img src="#" width="80" height="80"/>
                    <img src="#" width="80" height="80"/>
                    <img src="#" width="80" height="80"/>
                </td>
            </tr>

            <tr>
                <td style="text-align:right;">产品详情：</td>
                <td><textarea class="textarea">...这里直接调用文本编辑器...移除此处的“textarea”即可</textarea></td>
            </tr>
            <tr>
                <td style="text-align:right;"></td>
                <td><input type="submit" value="发布新商品" class="tdBtn"/></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
