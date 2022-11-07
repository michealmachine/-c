package web.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import web.dao.UserDao;
import web.domain.User;

import java.io.IOException;
import java.util.Collection;
import java.util.Map;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User LoginUser = new User(request.getParameter("username"), request.getParameter("password"));
        User user = new UserDao().login(LoginUser);
        if(user==null){
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/FailServlet");
            requestDispatcher.forward(request,response);
        }else {
            request.setAttribute("user",user);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Success.jsp");
            requestDispatcher.forward(request,response);
            getServletContext().setAttribute("userId",user.getId());
        }
    }
}
