<%--
  Created by IntelliJ IDEA.
  User: Double2and9
  Date: 2022/9/1
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="ladder.jsp">
  <jsp:param name="A" value="5"/>
  <jsp:param name="B" value="8"/>
  <jsp:param name="C" value="10"/>
</jsp:include>
<jsp:include page="circle.jsp">
  <jsp:param name="R" value="6"/>
</jsp:include>
</body>
</html>
