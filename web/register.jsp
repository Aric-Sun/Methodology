<%--
  Created by IntelliJ IDEA.
  User: 超
  Date: 2019/12/4
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="libs/css/bootstrap.min.css">
<script src="libs/js/jquery-3.2.1.min.js"></script>
<script src="libs/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="libs/css/register.css">
<html>
<head>
    <title>注册</title>
    <style>
        body{
            /*background-color:cadetblue;*/
            background: #F6E8B1;
            /*background-size: 100%;*/
        }
        .body {
            position: fixed;
            top: 15%;
            left: 35%;
        }
        .gy{
            /*font-size:50px;*/
            color: red;
        }
    </style>
</head>
<body>
<div class="body">
<form action="/web/register" id="register-form" method="post" class="form-horizontal" role="form">
    <div class="form-group">
        <label for="userId" class="col-sm-2 control-label"> 账号 </label>
        <div class="col-sm-10">
            <input type="text" name="userId" class="form-control" id="userId" placeholder=" 请输入账号 ">
        </div>
    </div>
    <%--账&nbsp;&nbsp;&nbsp;&nbsp;号:<input type="text" name="userId"><br>--%>
    <div class="form-group">
        <label for="username" class="col-sm-2 control-label"> 用户名 </label>
        <div class="col-sm-10">
            <input type="text" name="username" class="form-control" id="username" placeholder=" 请输入用户名 ">
        </div>
    </div>
    <%--用&nbsp;户&nbsp;名:<input type="text" name="username"><br>--%>
    <div class="form-group">
        <label for="password" class="col-sm-2 control-label"> 密码 </label>
        <div class="col-sm-10">
            <input type="password" name="password" class="form-control" id="password" placeholder=" 请输入密码 ">
        </div>
    </div>
    <%--密&nbsp;&nbsp;&nbsp;&nbsp;码:<input type="password" name="password"><br>--%>
    <div class="form-group">
        <label for="rePassword" class="col-sm-2 control-label"> 确认密码 </label>
        <div class="col-sm-10">
            <input type="password" name="rePassword" class="form-control" id="rePassword" placeholder=" 请再次输入密码 ">
        </div>
    </div>
    <%--确认密码:<input type="password" name="rePassword"><br>--%>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default" value="submit"> 注册 </button>
        </div>
    </div>
    <%--<input type="submit" value="submit">--%>
</form>

<form action="<%=request.getContextPath() %>/index.jsp" class="form-horizontal" role="form">
    <%--<input type="submit" value="返回">--%>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default" value="返回"> 返回 </button>
        </div>
    </div>
</form>
</body>
</html>
