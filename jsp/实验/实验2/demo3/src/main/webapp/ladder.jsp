<%--
  Created by IntelliJ IDEA.
  User: Double2and9
  Date: 2022/9/1
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String strA=request.getParameter("A");
    String strB=request.getParameter("B");
    String strC=request.getParameter("C");
    double a=Double.parseDouble(strA);
    double b=Double.parseDouble(strB);
    double c=Double.parseDouble(strC);
    double area=(a+b)*c/2;
%>
<p>梯形面积为<%=area%></p>