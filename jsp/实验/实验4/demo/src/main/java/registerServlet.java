import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.getWriter().write("你的账户："+request.getParameter("username"));
        response.getWriter().write("<br>");
        response.getWriter().write("你的密码："+request.getParameter("password1"));
        response.getWriter().write("<br>");
        response.getWriter().write("你的性别："+request.getParameter("gender"));
        response.getWriter().write("<br>");
        response.getWriter().write("你的爱好有：");
        for (String hobby : request.getParameterValues("hobby")) {
            response.getWriter().write(hobby+" ");
        }
        response.getWriter().write("<br>");
        response.getWriter().write("你的简历为：");
        response.getWriter().write(request.getParameter("text"));
    }
}
