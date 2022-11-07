package web.dao;

import org.testng.annotations.Test;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import web.domain.books;
import web.util.JDBCUtils;

public class booksDao {
    private JdbcTemplate template=new JdbcTemplate(JDBCUtils.getDataSource());
    public books login(int id){
        try {
            books books = template.queryForObject("select * from books where id= ?", new BeanPropertyRowMapper<>(books.class), id);
            return books;
        }catch (Exception e){
            template.update("insert into books values (?,?,?,?)",id,false,false,false);
            return template.queryForObject("select * from books where id= ?", new BeanPropertyRowMapper<>(books.class), id);
        }
    }

    public void addbooks(int id,int book){
        if(book==1)template.update("update books set book1 = true where id = ?",id);
        if(book==2)template.update("update books set book2 = true where id = ?",id);
        if(book==3)template.update("update books set book3 = true where id = ?",id);
    }
    public void deletebooks(int id,int book){
        if(book==1)template.update("update books set book1 = false where id = ?",id);
        if(book==2)template.update("update books set book2 = false where id = ?",id);
        if(book==3)template.update("update books set book3 = false where id = ?",id);
    }
    @Test
    public void test(){
        new booksDao().addbooks(1,2);
    }
}
