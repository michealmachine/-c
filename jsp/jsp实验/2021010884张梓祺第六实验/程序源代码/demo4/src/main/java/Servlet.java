import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.io.IOException;

@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password1");
        String gender = request.getParameter("gender");
        StringBuilder hobby = new StringBuilder();
        if(request.getParameterValues("hobby")!=null)for (String h : request.getParameterValues("hobby")) {
            hobby.append(h);
        }
        String text = request.getParameter("text");
        JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());

        try{
            LoginBean loginBean = template.queryForObject("select * from users where username=?", new BeanPropertyRowMapper<>(LoginBean.class), username);
            response.sendRedirect("/Success.jsp");
        }catch (Exception e){
            template.update("insert into users values(?,?,?,?,?)",username,password,gender, hobby.toString(),text);
            request.getSession().setAttribute("username",username);
            request.getSession().setAttribute("password",password);
            request.getSession().setAttribute("gender",gender);
            request.getSession().setAttribute("hobby", hobby.toString());
            request.getSession().setAttribute("text",text);
            response.sendRedirect("/show.jsp");
        }
    }

}
