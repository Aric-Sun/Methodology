<%--
  Created by IntelliJ IDEA.
  User: 超
  Date: 2019/12/10
  Time: 20:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="libs/css/bootstrap.min.css">
<script src="libs/js/jquery-3.2.1.min.js"></script>
<script src="libs/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="libs/css/mockTest.css">
<html>
<head>
    <title>模拟考试</title>
    <style>
        body{
            background-color: #ffedea;
            /*width: 800px;*/
        }
        /*.p1{*/
            /*font-size: 70px;*/
            /*color: red;*/
        /*}*/
        .p2{
            font-size: 30px;
        }
    </style>
</head>
<body>
<h1 id="tip-title" class="text-center">请仔细阅读考试说明</h1>
<hr size="3"color="red">
<div class=p2>
    <table align="center">
        <tr>
            <%--<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>--%>
            <td>
                <p class="text-info">考试车型：全国通用 小车C1/C2/C3</p>
            </td>
            <%--<td></td>--%>
        </tr>
        <tr>
            <%--<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>--%>
            <td>
                <p class="text-info">考试数量：50题</p>
            </td>
            <%--<td></td>--%>
        </tr>
        <tr>
            <%--<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>--%>
            <td>
                <p class="text-info">考试时间：45分钟</p>
            </td>
            <%--<td></td>--%>
        </tr>
        <tr>
            <%--<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>--%>
            <td>
                <p class="text-info">合格标准：满分100分，90分及格</p>
            </td>
            <%--<td></td>--%>
        </tr>
        <tr>
            <%--<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>--%>
            <td>
                <p class="text-info">出题规则：按公安部规定比例随机抽取</p>
            </td>
            <%--<td></td>--%>
        </tr>
        <tr>
            <%--<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>--%>
            <td>
                <a href="<%=request.getContextPath() %>/b.showAll">
                    <button type="button" class="btn btn-primary btn-lg btn-block"> 开始考试 </button>
                </a>
            </td>
            <%--<td></td>--%>
        </tr>
        <tr>
            <td>
                <form action="<%=request.getContextPath() %>/index.jsp">
                    <%--<input type="submit" value="返回">--%>
                    <div>
                        <button id="return-btn" type="submit" class="btn btn-primary btn-lg btn-block" value="返回"> 返回 </button>
                    </div>
                </form>
            </td>
        </tr>
    </table>
    <%--<button type="button" class="btn btn-primary"> 原始按钮 </button>--%>
</div>
<%--考试车型：全国通用 小车C1/C2/C3<br>--%>
<%--考试数量：50题<br>--%>
<%--考试时间：45分钟<br>--%>
<%--合格标准：满分100分，90分及格<br>--%>
<%--出题规则：按公安部规定比例随机抽取<br>--%>
<%--<a href="<%=request.getContextPath() %>/test1">开始考试</a>--%>
</body>
</html>
