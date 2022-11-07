<%--
  Created by IntelliJ IDEA.
  User: Double2and9
  Date: 2022/9/8
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body bgcolor="yellow">
<%
  String sizeA=request.getParameter("sizeA");
  String sizeB=request.getParameter("sizeB");
  String sizeC=request.getParameter("sizeC");
  try {
    double a=Double.parseDouble(sizeA);
    double b=Double.parseDouble(sizeB);
    double c=Double.parseDouble(sizeC);
    double p=(a+b+c)/2;
    out.print("<br>三角形面积为"+Math.sqrt(p*(p-a)*(p-b)*(p-c)));
  }catch (NumberFormatException e){
    out.print("<br>请输入数字字符");
    response.sendRedirect("test.jsp");
  }
%>
</body>
</html>
