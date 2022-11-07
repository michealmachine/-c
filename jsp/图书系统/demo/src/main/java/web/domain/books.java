package web.domain;

public class books {
    private int id;
    private boolean book1;
    private boolean book2;
    private boolean book3;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public boolean isBook1() {
        return book1;
    }

    public void setBook1(boolean book1) {
        this.book1 = book1;
    }

    public boolean isBook2() {
        return book2;
    }

    public void setBook2(boolean book2) {
        this.book2 = book2;
    }

    public boolean isBook3() {
        return book3;
    }

    public void setBook3(boolean book3) {
        this.book3 = book3;
    }

    @Override
    public String toString() {
        return "books{" +
                "id=" + id +
                ", book1=" + book1 +
                ", book2=" + book2 +
                ", book3=" + book3 +
                '}';
    }
}
