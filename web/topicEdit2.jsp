<%@ page import="entity.Topic" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="entity.TopicOption" %>
<%@ page import="entity.Manager" %><%--
  Created by IntelliJ IDEA.
  User: 超
  Date: 2019/12/11
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改</title>
    <link rel="stylesheet" href="libs/css/bootstrap.min.css">
    <script src="libs/js/jquery-3.2.1.min.js"></script>
    <script src="libs/js/bootstrap.min.js"></script>
    <style>
        body{
            background-color:#F6E8B1;
            /*background-size: 100%;*/
            padding: 50px 50px;
        }
        .body {
            position: fixed;
            top: 12%;
            left: 32%;
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
<div class="body">
<%
    String change= (String) session.getAttribute("a");

    ArrayList<Topic> topics = (ArrayList<Topic>) session.getAttribute("topics");
    for (Topic topic : topics) {
        String b= String.valueOf(topic.getId());
        if (change.equals(b)){
        TopicOption[] topicOptions = topic.getTopicOption();
%>

<form role="form">
    <div class="form-group">
        <label>题目</label><br>
        <textarea cols="80" rows="3" name="question"><%=topic.getQuestion()%></textarea><br>
        <label>选项A：</label><textarea class="form-control" cols="80" rows="1" name="question"><%=topicOptions[0].getContent()%></textarea><br>
        <label>选项B：</label><textarea class="form-control" cols="80" rows="1" name="question"><%=topicOptions[1].getContent()%></textarea><br>
        <label>选项C：</label><textarea class="form-control" cols="80" rows="1" name="question"><%=topicOptions[2].getContent()%></textarea><br>
        <label>选项D：</label><textarea class="form-control" cols="80" rows="1" name="question"><%=topicOptions[3].getContent()%></textarea><br>
        <input class="btn btn-default" type="submit" value="修改" disabled>
    </div>
</form>
<%
        }
    }
%>
</body>
</html>
