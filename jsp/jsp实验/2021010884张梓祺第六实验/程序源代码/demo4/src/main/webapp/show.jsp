<%--
  Created by IntelliJ IDEA.
  User: Double2and9
  Date: 2022/11/7
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    response.setContentType("text/html");
    response.getWriter().write("你的账户："+request.getParameter("username"));
    response.getWriter().write("<br>");
    response.getWriter().write("你的密码："+request.getParameter("password1"));
    response.getWriter().write("<br>");
    response.getWriter().write("你的性别："+request.getParameter("gender"));
    response.getWriter().write("<br>");
    response.getWriter().write("你的爱好有："+request.getParameter("hobby"));
    response.getWriter().write("<br>");
    response.getWriter().write("你的简历为：");
    response.getWriter().write(request.getParameter("text"));
%>
</body>
</html>
