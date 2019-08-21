<%--
  Created by IntelliJ IDEA.
  User: ongraph
  Date: 20/08/19
  Time: 4:38 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<asset:stylesheet src="bootstrap.css"></asset:stylesheet>
<asset:stylesheet src="bootstrap.min.css"></asset:stylesheet>
<asset:stylesheet src="login.css"></asset:stylesheet>
<head>
    <title class="font-weight-bold">Registration Form</title>

</head>

<div class="reg_container text-lg-center">
    <body>
    <div class="font-weight-bold">Please fill in this form to create an account</div>

    <g:form name="register">
        %{--<table>
            <tr>
                <td>
                    <label for="firstName">First Name</label>
                </td>
                <td>
                    <input type="text" class="form-control input_text" placeholder="Enter first name" name="firstName"
                           id="firstName">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="lastName">Last Name</label>
                </td>
                <td>
                    <input type="text" class="form-control input_text" placeholder="Enter second name" name="lastName"
                           id="lastName">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="Email">Email</label>
                </td>
                <td>
                    <input type="text" class="form-control input_text" placeholder="Enter email" name="email"
                           id="email">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="password">Password</label>
                </td>
                <td>
                    <input type="text" class="form-control input_text" placeholder="Enter password" name="password"
                           id="password">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="confirmPassword">Confirm Password</label>
                </td>
                <td>
                    <input type="text" class="form-control input_text" placeholder="Confirm password"
                           name="confirmPassword" id="confirmPassword">
                </td>
            </tr>
        </table>
        <br>
        <button type="submit" class="btn btn-success" value="register">Register</button>
        <br>--}%

        <form>
            <div class="form-group row">
                <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-10">
                    <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="email@example.com">
                </div>
            </div>
            <div class="form-group row">
                <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                </div>
            </div>
        </form>
    </g:form>

    </body>
</div>
</html>