<%@ page import="entity.Topic" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="entity.TopicOption" %>
<%@page import="entity.User"%>
<%--
  Created by IntelliJ IDEA.
  User:
  Date: 2019/12/4
  Time: 13:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="libs/css/bootstrap.min.css">
<script src="libs/js/jquery-3.2.1.min.js"></script>
<script src="libs/js/bootstrap.min.js"></script>
<html>
<head>
    <title>测试</title>
    <style>
        body{
            background-color:#f2f2f2;
            /*background-size: 100%;*/
            /*width: 800px;*/
        }
        .body {
            position: fixed;
            top: 25%;
            left: 37%;
        }
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
<%
    ArrayList<Topic> topics = (ArrayList<Topic>) session.getAttribute("topics");
//    int p=0;
    int current_id = (int) session.getAttribute("current_id");
    Topic topic= topics.get(current_id);
//    for (Topic topic : topics) {
    TopicOption[] topicOptions = topic.getTopicOption();
%>
    <div class="col-md-offset-5 align-self-center"  style="margin-top:10%">
        <form action="" class="form-horizontal" role="form" id="aa<%=current_id%>" method="get">
            <label>
                <input style="width: 70px" class="form-control" type="text" readonly="readonly" value="<%="题目"+topic.getId()%>" name="a" size="1">
                <%=topic.getQuestion()%>
            </label><br>
            <%
                for (int i = 0; i < 4; i++) {
                    if (topicOptions[i] != null) {
            %>
                    <label>
                        <input type="radio" name="option" value="<%=i+1%>">
                        <%=topicOptions[i].getOptionNumber()%>：<%=topicOptions[i].getContent()%>
                    </label><br>
            <%
                    }
                }
            %>
            <input type="submit" class="btn btn-default" value="提交">
        </form>
        <%--<form action="<%=request.getContextPath()%>/topic.showBelowTopic" class="form-inline" method="get">--%>
        <input type="submit" class="btn btn-default" value="上一题" onclick="previousTopic()" disabled>
        <%--</form>--%>
        <%--<form action="<%=request.getContextPath()%>/topic.showAfterTopic" class="form-inline" method="get">--%>
        <input type="submit" class="btn btn-default" value="下一题" onclick="nextTopic()">
        <%--</form>--%>
    </div>
<%
//        p++;
//    }
%>
<script language="JavaScript">
    function nextTopic()
    {
        <%--var next_id = <%=(int) session.getAttribute("current_id")%>;--%>
        <%--// console.assert()--%>
        <%--if (next_id < 10){--%>
            <%--document.getElementById("aa<%=current_id%>").value = next_id+1;--%>
            <%--document.getElementById("aa<%=current_id%>").submit();--%>
        <%--}--%>
        <%
            int next_id =(int) session.getAttribute("current_id");
            System.out.println(next_id);
            if (next_id < 10){
                next_id++;
                System.out.println(next_id+"px");
            }
            session.setAttribute("current_id", next_id);
        %>
        location.replace(location.href);
    }
    // 因为刷新页面会自动调用js，所以两个函数对同意变量操作产生冲突。
    // 需要用Ajax异步请求。暂时无法实现，先关闭之
    function previousTopic() {
        <%--//因为刷新页面就会做一次js，所以这两个并发冲突了--%>
        <%--<%--%>
            <%--int previous_id = (int) session.getAttribute("current_id");--%>
            <%--if (previous_id > 1){--%>
                <%--previous_id--;--%>
            <%--}--%>
            <%--session.setAttribute("current_id", previous_id);--%>
        <%--%>--%>
        <%--location.replace(location.href);--%>
    }
</script>
</body>
</html>
