<%--
  Created by IntelliJ IDEA.
  User: ongraph
  Date: 30/08/19
  Time: 6:24 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>E-WALLET</title>
    <asset:stylesheet href="login.css"/>
    <asset:stylesheet href="login.css"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="modals.js"/>
</head>

<body>
                <g:link controller="admin" action="index"></g:link>
<table class="table table-bordered">
    <thead>
    <tr>
        <th>SNo</th>
        <th>Email</th>
        <th>Amount</th>
        <th>Status</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${requestList}">
        <tr>
            <td>1</td>
            <td>${it.email}</td>
            <td>${it.amount}</td>
            <td>${it.status}</td>
            <td>${it.action}
                <button class="btn btn-success">ACCEPT</button>
                <button class="btn btn-danger" type="button">DECLINE</button>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>
</body>
</html>