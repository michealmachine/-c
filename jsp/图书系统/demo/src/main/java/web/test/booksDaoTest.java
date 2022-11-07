package web.test;

import org.testng.annotations.Test;
import web.dao.booksDao;

public class booksDaoTest {
    @Test
    public void testLogin(){
        System.out.println(new booksDao().login(1));
    }
}
