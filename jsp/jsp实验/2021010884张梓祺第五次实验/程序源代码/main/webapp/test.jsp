<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2022/11/7
  Time: 9:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/Servlet">
  请输入三角形三边：
  <input name="a">
  <input name="b">
  <input name="c">
  <input type="submit" value="计算">
</form>
三角形的面积为<%=request.getSession().getAttribute("value")%>
</body>
</html>
