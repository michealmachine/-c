package web.dao;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import web.domain.User;
import web.util.JDBCUtils;

public class UserDao {
    private JdbcTemplate template=new JdbcTemplate(JDBCUtils.getDataSource());
    public User login(User loginUser){
        User user = template.queryForObject("select * from user where username= ? and password= ?",
                new BeanPropertyRowMapper<User>(User.class),
                loginUser.getUsername(),
                loginUser.getPassword());
        return user;
    }
    public void register(String username,String password){
        template.update("insert into user values (null,?,?)",username,password);
    }
}
