<%--
  Created by IntelliJ IDEA.
  User: Double2and9
  Date: 2022/9/1
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String strR = request.getParameter("R");
    double R = Double.parseDouble(strR);
    double area=Math.PI*Math.pow(R,2);
%>
<p>圆的面积是:<%=area%></p>
