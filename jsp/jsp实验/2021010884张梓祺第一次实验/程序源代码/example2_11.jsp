<%--
  Created by IntelliJ IDEA.
  User: Double2and9
  Date: 2022/9/1
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body bgcolor="cyan">

<%
    for (int i = 0; i < 26; i++) {
        out.print((char)('A'+i)+" "+"<BR>");
    }
%>
</body>
</html>
