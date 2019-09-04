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
    <asset:stylesheet href="bootstrap.css"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="modals.js"/>
</head>

<body>
<div class="container align-items-md-center">
    <div class="div_header">
        <p class="ewallet_heading">
            E-WALLET
        </p>
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
    <g:each in="${requestList}" var="request" status="i">
        <tr>
           <td>${i+1}</td>
            <td>${request.email}</td>
            <td>${request.amount}</td>
            <td>${request.status}</td>
            <td>
                <input type="hidden" name="requestId" id="requestId" value="${request.id}"/>
                <button class="btn btn-success" id="approveButton">Approve</button>
                <button class="btn btn-danger" id="declineButton">Decline</button>
            </td>
        </tr>
    </g:each>
    </tbody>
        </table>

    </div>
</div>
</body>
</html>