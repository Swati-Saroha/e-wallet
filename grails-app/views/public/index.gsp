<%--
  Created by IntelliJ IDEA.
  User: ongraph
  Date: 20/08/19
  Time: 12:01 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>E-Wallet</title>
    <asset:stylesheet href="bootstrap.css"></asset:stylesheet>
    <asset:stylesheet href="bootstrap.min.css"></asset:stylesheet>
    <asset:stylesheet href="login.css"></asset:stylesheet>
</head>

<div class="container">
    <div class="container">
        <body class="text-lg-center">
        <div> Account Login </div>

            <g:form class="form-group" action="register">
                <input class="form-control" type="email" name="email" id="email">
                <br>
                <input class="form-control" type="password" name="password" id="password">
                <br>
                <button class="btn btn-success" type="submit">Login</button>
                <button class="btn btn-primary" type="submit">SignUp</button>

            </g:form>
        </body>
    </div>
</div>
</html>