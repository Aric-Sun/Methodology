<%@ page import="entity.Manager" %>
<%--
  Created by IntelliJ IDEA.
  User: 超
  Date: 2019/12/9
  Time: 23:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="libs/css/bootstrap.min.css">
<script src="libs/js/jquery-3.2.1.min.js"></script>
<script src="libs/js/bootstrap.min.js"></script>
<html>
<head>
    <title>Title</title>
    <style>
        body{
            /*background-image: url(picture/F3615D4F2CA0D00544DE30469AC8EE2E.jpg);*/
            /*background-repeat:no-repeat;*/
            /*background-size: 100%;*/
            background: #f3f3f3;
            padding: 50px 50px;
        }
        .p1{
            font-size: 70px;
            color: red;
        }
        .box{
            /*!important;*/
            font-size: 50px;
        }
    </style>
</head>
<body>
<%
    Manager manager= (Manager) session.getAttribute("manager");
%>
<%--<%=manager.getManager_username()%>管理员登录成功--%>

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
            <a class="navbar-brand" href="index.jsp"> 驾校在线练习系统 <small>管理界面</small></a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav navbar-left" id="nav-btn">
                <li>
                    <a href="<%=request.getContextPath() %>/user.manager"> 用户管理 </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath() %>/a.showAll"> 题目管理 </a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right" >
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <%=manager.getManager_username() %>
                    </a>
                    <ul class="dropdown-menu">
                        <%--<li class="divider"></li>--%>
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
    <h1>欢迎来到驾考在线练习系统<small>&nbsp;管理界面</small></h1>
</div>
<%--<div class="box">--%>
    <%--<p class="p1">管理类型选择</p>--%>
    <%--<hr size="3"color="red">--%>
    <%--<table style="color: #d43f3a">--%>
        <%--<tr>--%>
            <%--<td></td>--%>
            <%--<td style="color: red"><li style="color: red"><a href="<%=request.getContextPath() %>/user.manager" style="color: red">用户管理</a></li></td>--%>
            <%--<td></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td></td>--%>
            <%--<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>--%>
            <%--<td></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td></td>--%>
            <%--<td><li><a href="<%=request.getContextPath() %>/a.showAll">管理题目</a></li></td>--%>
            <%--<td></td>--%>
        <%--</tr>--%>

        <%--<tr>--%>
            <%--<td></td>--%>
            <%--<td>&nbsp;&nbsp;&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>--%>
            <%--<td></td>--%>
        <%--</tr>--%>

        <%--<tr>--%>
            <%--<td></td>--%>
            <%--<td><li><a href="<%=request.getContextPath()%>/dropout">退出</a></li></td>--%>
            <%--<td></td>--%>
        <%--</tr>--%>
    <%--</table>--%>
<%--</div>--%>





<%--<%--%>
    <%--Manager manager= (Manager) session.getAttribute("manager");--%>
<%--%>--%>
<%--<%=manager.getManager_username()%>管理员登录成功--%>
<%--<a href="<%=request.getContextPath() %>/user.manager">用户管理</a>--%>
<%--<a href="<%=request.getContextPath() %>/showAll">题目管理</a>--%>
<%--<a href="<%=request.getContextPath()%>/dropout">退出</a>--%>

</body>
</html>
