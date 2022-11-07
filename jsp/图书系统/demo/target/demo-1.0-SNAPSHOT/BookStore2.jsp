<%@ page import="web.dao.booksDao" %><%--
  Created by IntelliJ IDEA.
  User: Double2and9
  Date: 2022/10/9
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if(request.getParameter("addbooks")!=null) {
        if(request.getParameter("addbooks").equals("book1")){
            new booksDao().addbooks((Integer) pageContext.getServletContext().getAttribute("userId"),1);
        }
        if(request.getParameter("addbooks").equals("book2")){
            new booksDao().addbooks((Integer) pageContext.getServletContext().getAttribute("userId"),2);
        }
        if(request.getParameter("addbooks").equals("book3")){
            new booksDao().addbooks((Integer) pageContext.getServletContext().getAttribute("userId"),3);
        }
        out.print("添加" + request.getParameter("addbooks") + "成功");
    }
    if(request.getParameter("deletebooks")!=null) {
        if(request.getParameter("deletebooks").equals("book1")){
            new booksDao().deletebooks((Integer) pageContext.getServletContext().getAttribute("userId"),1);
        }
        if(request.getParameter("deletebooks").equals("book2")){
            new booksDao().deletebooks((Integer) pageContext.getServletContext().getAttribute("userId"),2);
        }
        if(request.getParameter("deletebooks").equals("book3")){
            new booksDao().deletebooks((Integer) pageContext.getServletContext().getAttribute("userId"),3);
        }
        out.print("删除" + request.getParameter("deletebooks") + "成功");
    }

%>
<% response.setHeader("refresh", "2;URL=/learn/BookStore.jsp");%>
<html>
<head>
    <title>Title</title>
</head>

<body>

<%--<% response.setHeader("refresh", "2;URL=/learn/BookStore.jsp");%>
<%
    response.sendRedirect("/Success.jsp");
%>--%>
<%--<%
    out.print((Integer) pageContext.getServletContext().getAttribute("userId"));
%>--%>

</body>
</html>
