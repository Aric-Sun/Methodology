<%@ page import="entity.User" %><%--
  Created by IntelliJ IDEA.
  User: 超
  Date: 2019/12/4
  Time: 9:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="libs/css/bootstrap.min.css">
<script src="libs/js/jquery-3.2.1.min.js"></script>
<script src="libs/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="libs/css/index.css">
<%--主页--%>
<html>
<head>
    <style>
        .p1 {
            font-size: 100px;
            /*color: dark;*/
        }
        .p2 {
            font-size: 70px;
            color: red;
        }
        a:link {
            color: #000000;

        }
        .box {
            font-size: 50px;
        }
        .box1 {
            font-size: 50px;
        }
        <%
        User user = new User();
        if (session.getAttribute("user") != null) {
            user = (User) session.getAttribute("user");
        }
        if (user.getUser_username() != null) {
        %>
        body {
            /*background: url(picture/F3615D4F2CA0D00544DE30469AC8EE2E.jpg);*/
            /*background-repeat: no-repeat;*/
            /*background-size: 100%;*/
            background: #f3f3f3;
            padding: 50px 50px;

        }

        <%
        }else {
        %>
        body {
            /*background: url(picture/F64FBE5DFBFB544A01EA20649CC1E4A2.jpg);*/
            background: #f5f4ec;
            /*background-repeat: no-repeat;*/
            /*background-size: 100%;*/
            /*width: 400px;*/
        }

        <%
        }
        %>
    </style>
    <meta charset="UTF-8">
    <title>驾校在线练习系统</title>
</head>
<body style="text-align:center">
<%
    if (session.getAttribute("user") != null) {

        user = (User) session.getAttribute("user");
    }
    String is = (String) session.getAttribute("is");
    if (user.getUser_username() != null) {

%>



<%--<%=user.getUser_username()%>用户已登录--%>
<%--<a href="<%=request.getContextPath() %>/mockTest.jsp">试卷测试</a>--%>
<%--<a href="<%=request.getContextPath() %>/b.showAll">全部习题测试</a>--%>
<%--<a href="<%=request.getContextPath() %>/wrong.jsp">错题</a>--%>
<%--<a href="<%=request.getContextPath() %>/dropout">退出</a>--%>

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
<div style="margin-top: 100px">
    <h1>欢迎来到驾考在线练习系统</h1>
</div>

<%
} else {
%>
<div id="login-title">
    <h1>欢迎来到驾考在线练习系统</h1>
</div>
<div id="login-btn">
    <a href="<%=request.getContextPath() %>/login.jsp">
        <button type="button" class="btn btn-primary btn-lg"> 登录 </button>
    </a>
    <br>
    <a href="<%=request.getContextPath() %>/register.jsp">
        <button type="button" class="btn btn-primary btn-lg"> 注册 </button>
    </a>
</div>

<%
    }
%>
</body>
</html>
