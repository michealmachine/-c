<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2022/10/9
  Time: 10:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="web.dao.UserDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  new UserDao().register(request.getParameter("username"),request.getParameter("password"));
%>
<% response.setHeader("refresh", "2;URL=/learn/Login.html");%>
<html>
<head>
    <title>Title</title>
</head>
<body>
注册成功
</body>
</html>
