<%--
  Created by IntelliJ IDEA.
  User: Double2and9
  Date: 2022/11/7
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script>
    window.onload=function () {
        document.getElementById("sub").onclick=function () {
            var value1 = document.getElementById("password1").value;
            var value2 = document.getElementById("password2").value;
            if(value1.length<3){
                alert("密码长度小于3位");
                return false;
            }
            if(value1!==value2){
                alert("两次密码不一致");
                return false;
            }

        }
    }
</script>
<body>
<p>注册</p>
<form method="post" action="/Servlet">
    <table>
        <tr>
            <td>请输入注册名：</td>
            <td><input name="username"></td>
        </tr>
        <tr>
            <td>请输入密码：</td>
            <td><input type="password" name="password1" id="password1" placeholder="密码大于3位"><br></td>
        </tr>
        <tr>
            <td>请再次输入密码：</td>
            <td><input type="password" name="password2" id="password2"><br></td>
        </tr>
        <tr>
            <td>请选择你的性别</td>
            <td><input type="radio" name="gender" value="男">男<input type="radio" name="gender" value="女">女</td>
        </tr>
        <tr>
            <td>请选择你的爱好</td>
            <td><input type="checkbox" name="hobby" value="体育">体育
                <input type="checkbox" name="hobby" value="音乐">音乐
                <input type="checkbox" name="hobby" value="美术">美术
                <input type="checkbox" name="hobby" value="其他">其他
            </td>
        </tr>
        <tr>
            <td>请输入你的简历</td>
            <td><textarea name="text"></textarea></td>
        </tr>
    </table>
    <input type="submit" value="注册" id="sub">
    <input type="reset" value="重制">
</form>
</body>
</html>

