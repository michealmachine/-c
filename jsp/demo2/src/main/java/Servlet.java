import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Double a = Double.parseDouble(request.getParameter("a"));
        Double b = Double.parseDouble(request.getParameter("b"));
        Double c = Double.parseDouble(request.getParameter("c"));
        model model = new model(a, b, c);
        double p=0.5*(a+b+c);
        model.setArea(Math.sqrt(p*(p-a)*(p-b)*(p-c)));
        request.getSession().setAttribute("value",model.getArea());
        response.sendRedirect("test.jsp");
    }
}
