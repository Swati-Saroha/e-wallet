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
    <asset:javascript src="bootstrap.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="jquery-3.4.1.js"/>

    <asset:javascript src="modals.js"/>
</head>

<body>
<div class="container align-items-md-center">
    <div class="div_header">
        <p class="ewallet_heading">
            E-WALLET
        </p>
        <ul class="nav nav-tabs">
            <li class="padding_5px"><a href="javascript:void(0)"><b>PENDING</b></a></li>
            <li class="padding_5px"><a href="javascript:void(0)" onclick="fetchApproveRequestList()"><b>APPROVED</b></a></li>
            <li class="padding_5px"><a href="javascript:void(0)" onclick="fetchDeclineRequestList()"><b>DECLINE</b></a></li>
        </ul>
        <div id="requestListData">
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
                        <td>${i + 1}</td>
                        <td>${request.email}</td>
                        <td>${request.amount}</td>
                        <td>${request.status}</td>
                        <td>
                            <input type="hidden" name="requestId" id="requestId_${i + 1}" value="${request.id}"/>
                            <button class="btn btn-success" data-requestId="${request.id}" id="approveButton"
                                    onclick="adminApprove(this)">Approve</button>
                            <button class="btn btn-danger" data-requestId="${request.id}" id="declineButton"
                                    onclick="adminDecline(this)">Decline</button>
                        </td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>

    </div>
</div>
</body>
</html>