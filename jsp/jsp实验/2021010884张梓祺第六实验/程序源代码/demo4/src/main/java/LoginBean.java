public class LoginBean {
    private String username;
    private String password;
    private String gender;
    private String hobby;
    private String text;

    public LoginBean() {
    }

    public LoginBean(String username, String password, String gender, String hobby, String text) {
        this.username = username;
        this.password = password;
        this.gender = gender;
        this.hobby = hobby;
        this.text = text;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getHobby() {
        return hobby;
    }

    public void setHobby(String hobby) {
        this.hobby = hobby;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
