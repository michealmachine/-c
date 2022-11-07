package web.test;

import org.testng.annotations.Test;
import web.dao.UserDao;
import web.domain.User;

public class UserDaoTest {
    @Test
    public void testLogin(){
        User loginuser = new User();
        loginuser.setUsername("Double2and9");
        loginuser.setPassword("Zzq664450274");
        UserDao dao=new UserDao();
        User user = dao.login(loginuser);
        System.out.println(user);
    }
}
