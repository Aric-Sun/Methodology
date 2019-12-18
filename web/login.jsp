<%--
  Created by IntelliJ IDEA.
  User: 超
  Date: 2019/12/4
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="libs/css/bootstrap.min.css">
<script src="libs/js/jquery-3.2.1.min.js"></script>
<script src="libs/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="libs/css/login.css">
<html>
<head>
    <style>
        body{
            /*background-image: url(picture/F3615D4F2CA0D00544DE30469AC8EE2E.jpg);*/
            /*background-size: 100%;*/
            background: #e9f1df;
        }
        .body {
            position: fixed;
            top: 22%;
            left: 40%;
        }
        .gy{
            /*font-size:50px;*/
            /*color: red;*/
            color: #f2385a;
            margin: 0 auto;
            margin-bottom: 30px;
        }
    </style>
    <title>登录</title>
</head>
<body>
<div class="body">
    <h1 class="gy">登录</h1>
    <form action="/web/login" method="get" id="login-form" class="form-horizontal" role="form">
        <div class="form-group">
            <label for="userId" class="col-sm-2 control-label"> 账号 </label>
            <div class="col-sm-10">
                <input type="text" name="userId" class="form-control" id="userId" placeholder=" 请输入账号 ">
            </div>
        </div>
        <%--账号:<input type="text" name="userId"><br><br>--%>
        <div class="form-group">
            <label for="password" class="col-sm-2 control-label"> 密码 </label>
            <div class="col-sm-10">
                <input type="password" name="password" class="form-control" id="password" placeholder=" 请输入密码 ">
            </div>
        </div>
        <%--密码:<input type="password" name="password"><br><br>--%>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox" id="check-admin">
                    <label>
                        <input type="checkbox" name="is" value="1"> 是否是管理员
                    </label>
                </div>
            </div>
        </div>
        <%--是否是管理员:<input type="checkbox" name="is" value="1"><br><br>--%>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default" value="submit" id="login-btn"> 登录 </button>
            </div>
        </div>
        <%--<input type="submit" value="submit">--%>
    </form>
    <form action="<%=request.getContextPath() %>/index.jsp" class="form-horizontal" role="form">
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default" value="返回" id="return-btn"> 返回 </button>
            </div>
        </div>
        <%--<input type="submit" value="返回">--%>
    </form>
</div>



<%--<form action="/web/login" method="get">--%>
    <%--账号:<input type="text" name="userId"><br>--%>
    <%--密码:<input type="password" name="password"><br>--%>
    <%--是否是管理员:<input type="checkbox" name="is" value="1"><br>--%>
    <%--<input type="submit" value="submit">--%>
<%--</form>--%>
<%--<form action="<%=request.getContextPath() %>/index.jsp">--%>
    <%--<input type="submit" value="返回">--%>
<%--</form>--%>
<%
    if (session.getAttribute("message") != null) {
%>
<%=session.getAttribute("message")%>
<%
    }
%>
</body>
</html>
