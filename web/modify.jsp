<%@ page import="java.util.List" %>
<%@ page import="entity.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="entity.Manager" %><%--
  Created by IntelliJ IDEA.
  User: 超
  Date: 2019/12/10
  Time: 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="libs/css/bootstrap.min.css">
<script src="libs/js/jquery-3.2.1.min.js"></script>
<script src="libs/js/bootstrap.min.js"></script>
<html>
<head>
    <title>用户管理</title>
    <style>
        body{
            /*background-color:cadetblue;*/
            /*background-size: 100%;*/
            background: #ffedea;
        }
        .body {
            position: fixed;
            top: 15%;
            left: 40%;
        }
        .gy{
            font-size:50px;
            color: red;
        }
    </style>
</head>
<body>
<%
    Manager manager= (Manager) session.getAttribute("manager");
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
            <a class="navbar-brand" href="index.jsp"> 驾校在线练习系统 <small>管理界面</small></a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav navbar-left" id="nav-btn">
                <li class="active">
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
<div class="table-responsive col-lg-offset-4" style="margin-top: 5%;align-content: center">
    <%--<h1>所有用户列表</h1>--%>
    <table class="table table-hover" style="width: 500px">
        <caption><span>用户列表</span></caption>
<%
    List<User> users=new ArrayList<User>();
    users= (List<User>) request.getAttribute("users");
%>

            <tr>
                <td>序号</td>
                <td>账号</td>
                <td>用户名</td>
                <td>操作</td>
            </tr>
            <%
                for (User user:users) {

            %>
            <tr>
                <td><%=user.getId()%></td>
                <td><%=user.getUser_userId()%></td>
                <td><%=user.getUser_username()%></td>
                <td><a href="<%=request.getContextPath()%>/delete?id=<%=user.getId()%>">
                    <button class="btn btn-danger">删除</button></a>
                </td>
            </tr>
            <%
                }
            %>
    </table>
</div>
<%--<%--%>
    <%--List<User> users=new ArrayList<User>();--%>
    <%--users= (List<User>) request.getAttribute("users");--%>
<%--%>--%>
<%--<table border="1">--%>
    <%--<tr>--%>
        <%--<td>序号</td>--%>
        <%--<td>账号</td>--%>
        <%--<td>用户名</td>--%>
        <%--<td>操作</td>--%>
    <%--</tr>--%>
    <%--<%--%>
        <%--for (User user:users) {--%>

    <%--%>--%>
    <%--<tr>--%>
        <%--<td><%=user.getId()%></td>--%>
        <%--<td><%=user.getUser_userId()%></td>--%>
        <%--<td><%=user.getUser_username()%></td>--%>
        <%--<td><a href="<%=request.getContextPath()%>/delete?id=<%=user.getId()%>">删除</a></td>--%>
    <%--</tr>--%>
    <%--<%--%>
        <%--}--%>
    <%--%>--%>
</table>
</body>
</html>
