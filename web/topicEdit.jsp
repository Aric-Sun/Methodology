<%@ page import="java.util.List" %>
<%@ page import="entity.Topic" %>
<%@ page import="entity.TopicOption" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="entity.Manager" %><%--
  Created by IntelliJ IDEA.
  User: 超
  Date: 2019/12/10
  Time: 20:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="libs/css/bootstrap.min.css">
<script src="libs/js/jquery-3.2.1.min.js"></script>
<script src="libs/js/bootstrap.min.js"></script>
<html>
<head>
    <title>题目管理</title>
    <script >
        document.documentElement.style.overflow='scroll';
        function shan(a,t) {
            var url="/web/delete.change?a="+a;
            var ajax=new XMLHttpRequest();
            ajax.open("GET",url,true);
            ajax.send(null);
        }

        function change(a) {
            localStorage.setItem("change", a);
        }

    </script>
    <style>
        body{
            background-color:#f2f2f2;
            /*background-size: 100%;*/
            padding: 50px 50px;
        }
        .body {
            position: fixed;
            top: 12%;
            left: 37%;
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
                <li class="active">
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
<%
    ArrayList<Topic> topics = (ArrayList<Topic>) session.getAttribute("topics");
    int p=0;
    for (Topic topic : topics) {
        TopicOption[] topicOptions = topic.getTopicOption();
%>
<form action="/web/topicEdit2" id="aa<%=p%>" method="get">
    <label>
        <input style="width: 70px" type="text" readonly="readonly" class="form-control"value="<%=topic.getId()%>" name="a" size="1px">
        <%=topic.getQuestion()%><br>
    </label><br>
    <%
        for (int i = 0; i < 4; i++) {
            if (topicOptions[i] != null) {
    %>
    <%=topicOptions[i].getOptionNumber()%>：<%=topicOptions[i].getContent()%><br>
    <%
            }
        }
    %>
    <input style="width: 150px" class="btn btn-info" type="submit" value="修改">
    <input style="width: 80px" class="btn btn-danger" onclick="shan(<%=topic.getId()%>,'aa'+<%=p%>);" value="删除">
</form>

<%
        p++;
    }
%>
</body>
</html>
