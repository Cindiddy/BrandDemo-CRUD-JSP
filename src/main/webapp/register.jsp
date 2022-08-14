<%--
  Created by IntelliJ IDEA.
  User: yueqian
  Date: 8/13/22
  Time: 5:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome to Registration</title>
    <link href="css/register.css" rel="stylesheet">
</head>
<body>
<div class="form-div">
    <div class="reg-content">
        <h1>Welcome to Registration</h1>
        <span>Already has account？</span> <a href="login.html">Register</a>
    </div>
    <form id="reg-form" action="/brand-demo/registerServlet" method="post">

        <table>

            <tr>
                <td>Username</td>
                <td class="inputs">
                    <input name="username" type="text" id="username">
                    <br>
                    <span id="username_err" class="err_msg" >${register_msg}</span>
                </td>

            </tr>

            <tr>
                <td>Password</td>
                <td class="inputs">
                    <input name="password" type="password" id="password">
                    <br>
                    <span id="password_err" class="err_msg" style="display: none">Incorrect format</span>
                </td>
            </tr>


            <tr>
                <td>Validation code</td>
                <td class="inputs">
                    <input name="checkCode" type="text" id="checkCode">
                    <img id="checkCodeImg" src="/brand-demo/checkCodeServlet">
                    <a href="#" id="changeImg">not clear？</a>
                </td>
            </tr>

        </table>

        <div class="buttons">
            <input value="Register" type="submit" id="reg_btn">
        </div>
        <br class="clear">
    </form>
</div>

<script>
    document.getElementById("changeImg").onclick=function (){

        document.getElementById("checkCodeImg").src="/brand-demo/checkCodeServlet?"+ new Date().getMilliseconds();
    }
</script>

</body>
</html>
