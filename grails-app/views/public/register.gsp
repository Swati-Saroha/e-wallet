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

    <g:form name="register" controller="public" action="registration">
        <g:hasErrors bean="${registrationCO}">
            <div style="color: red">
                <g:renderErrors bean="${registrationCO}"/>
                %{--<g:message code="registrationCO.firstName.nullable.error"/>
                <br>
                <g:message code="registrationCO.lastName.nullable.error"/>
                <br>
                <g:message code="registrationCO.email.unique.error"/>
                <br>
                <g:message code="registrationCO.password.nullable.error"/>
                <br>
                <g:message code="registrationCO.confirmPassword.nullable.error"/>
                <br>--}%
            </div>
        </g:hasErrors>
        <g:if test="${success}">
            <span class="alert alert-success">Registration is succesfull</span>
        </g:if>

        <span class="errorMessage"></span>
        <hr>

        <div class="form-group row">
            <label for="firstName" class="col-sm-2 col-form-label">First Name</label>
            <div class="col-sm-10">
                <g:textField name="firstName" class="form-control" placeholder="First Name"/>
            </div>
        </div>

        <div class="form-group row">
            <label for="lastName" class="col-sm-2 col-form-label">Last Name</label>
            <div class="col-sm-10">
            <g:textField name="lastName" class="form-control" placeholder="lastName"/>
            </div>
        </div>

        <div class="form-group row">
            <label for="email" class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-10">
                <g:textField name="email" class="form-control" placeholder="email"/>
            </div>
        </div>

        <div class="form-group row">
            <label for="password" class="col-sm-2 col-form-label">Password</label>

            <div class="col-sm-10">
               <g:passwordField name="password" class="form-control" placeholder="Password"/>
            </div>
        </div>

        <div class="form-group row">
            <label for="confirmPassword" class="col-sm-2 col-form-label">Confirm Password</label>

            <div class="col-sm-10">
                <g:passwordField name="confirmPassword" class="form-control" placeholder="confirmPassword"/>
            </div>
        </div>
        <button type="submit" class="btn btn-primary mb-2">Register</button>
    </g:form>

    </body>
</div>
</html>