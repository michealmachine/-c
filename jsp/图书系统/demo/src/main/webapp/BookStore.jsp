<%--
  Created by IntelliJ IDEA.
  User: Double2and9
  Date: 2022/10/9
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="web.domain.books" %>
<%@ page import="web.dao.booksDao" %>

你之前购买了这些：
<%
    books Book = new booksDao().login((Integer) pageContext.getServletContext().getAttribute("userId"));
    if (Book.isBook1())out.println("book1");
    if (Book.isBook2())out.println("book2");
    if (Book.isBook3())out.println("book3");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<br>
选择购买的书:
<form action="/learn//BookStore2.jsp" method="post">
    <select name="addbooks">
        <option>book1</option>
        <option>book2</option>
        <option>book3</option>
    </select>
    <input type="submit" value="增加">
</form>
<br>
撤销购买的书:
<form action="/learn//BookStore2.jsp" method="post">
    <select name="deletebooks">
        <option>book1</option>
        <option>book2</option>
        <option>book3</option>
    </select>
    <input type="submit" value="删除">
</form>
</body>
</html>

