<%--
  Created by IntelliJ IDEA.
  User: 超
  Date: 2019/12/10
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="entity.User"%>
<link rel="stylesheet" href="libs/css/bootstrap.min.css">
<script src="libs/js/jquery-3.2.1.min.js"></script>
<script src="libs/js/bootstrap.min.js"></script>
<html>
<head>
    <title>错题页面</title>
    <style>
        body{
            background-color:#f2f2f2;
            /*background-size: 100%;*/
        }
        /*.body {*/
            /*position: fixed;*/
            /*top: 28%;*/
            /*left: 37%;*/
        /*}*/
        .gy{
            font-size:30px;
        }
    </style>
</head>
<body>
<%
    User user = new User();
    if (session.getAttribute("user") != null) {
        user = (User) session.getAttribute("user");
    }
%>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#example-navbar-collapse">
                <span class="sr-only"> 切换导航 </span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp"> 驾校在线练习系统 </a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav navbar-left" id="nav-btn">
                <li>
                    <a href="<%=request.getContextPath() %>/mockTest.jsp"> 模拟考试 </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath() %>/b.showAll"> 顺序练习 </a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right" >
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <%=user.getUser_username()%> <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="<%=request.getContextPath() %>/wrong.jsp">错题</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="<%=request.getContextPath() %>/dropout">退出</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="col-lg-offset-5" style="margin-top: 15%">
    <label>在路口右转弯遇同车道前车等候放行信号时如何行驶？</label><br>
    <div class="radio">
        <label>
            <input type="radio" name="options" id="A" value="A" disabled >
                <span style="color: red">A 从前车左侧转弯</span>
        </label><br>
        <label>
            <input type="radio" name="options" id="B" value="B" disabled >B 从右侧占道转弯
        </label><br>
        <label>
            <input type="radio" name="options" id="C" value="C" disabled >C 鸣喇叭让前车让路
        </label><br>
        <label>
            <input type="radio" name="options" id="D" value="D" disabled checked>
                <span style="color: green">D 依次停车等候</span><br>
        </label><br>
    </div>
    <%--<table class="table">--%>
        <%--<tr>--%>
            <%--<td>在路口右转弯遇同车道前车等候放行信号时如何行驶？</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>A 从前车左侧转弯<br>--%>
                <%--B 从右侧占道转弯<br>--%>
                <%--C 鸣喇叭让前车让路<br>--%>
                <%--D 依次停车等候<br>--%>
            <%--</td>--%>

        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>解析：注意警告三角标志</td>--%>
        <%--</tr>--%>
    <%--</table>--%>
    <form class="form-inline" role="form">
        <button type="submit" class="btn btn-default" value="上一题"> 上一题 </button>
        <button type="submit" class="btn btn-default" value="确定"> 确定 </button>
        <button type="submit" class="btn btn-default" value="下一题"> 下一题 </button>
    </form>
</div>

</body>
</html>
