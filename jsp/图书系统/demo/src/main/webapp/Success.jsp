<%--
  Created by IntelliJ IDEA.
  User: Double2and9
  Date: 2022/10/9
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String username = request.getParameter("username");
%>
<% response.setHeader("refresh", "5;URL=/learn/BookStore.jsp");%>
<style>
  span{
    color: red;
  }
</style>
<script>
  var second=5;
  function showTime() {
    second--;
    var time=document.getElementById("time");
    time.innerHTML=second+"";
  }
  setInterval(showTime,1000);
</script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%=username%>欢迎回来，
距离跳转首页还有<span id="time">5</span>秒
</body>
</html>
