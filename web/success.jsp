<%--
  Created by IntelliJ IDEA.
  User: 超
  Date: 2019/12/8
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/web/libs/css/bootstrap.min.css">
<script src="/web/libs/js/jquery-3.2.1.min.js"></script>
<script src="/web/libs/js/bootstrap.min.js"></script>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
</head>
<body>
<%
    String a= (String) session.getAttribute("username");
    if (a!=null){

%>
<%=session.getAttribute("username")%>
<h1>登陆成功</h1>
<%
    }
%>
<%=session.getAttribute("message")%>
</body>
</html>
