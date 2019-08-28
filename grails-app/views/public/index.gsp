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


    <asset:stylesheet href="login.css"/>
    %{--    <asset:stylesheet href="bootstrap.min.css"/>--}%

    %{--<asset:stylesheet href="bootstrap.min.css"/>
    <asset:javascript src="bootstrap.min.js"/>--}%
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>

<body>

<div class="container align-items-md-center">
    <div class="div_header">
        <p class="ewallet_heading">
            E-WALLET
        </p>

        <div>
            <h1 class="amount">${balance}</h1>

            <g:if test="${flash.success}">
                <h4 class="alert alert-success">${flash.success}</h4>
            </g:if>
            <g:if test="${flash.error}">
                <h4 class="alert alert-danger">${flash.error}</h4>
            </g:if>
            <input type="button" id="ajaxbtn" class="btn btn-primary" data-toggle="modal" data-target="#myModal"
                   onclick="" value="Pay"/>
            <button type="button" class="btn btn-danger"><g:remoteLink class="logout" controller="logout" method="post"
                                                                       asynchronous="false"
                                                                       onSuccess="location.reload()">Logout</g:remoteLink></button>

        </div>

        <div class="modal fade" id="myModal" role="dialog"></div>

    </div>

    <table class="table table-bordered">
        <thead>
        <tr>
            <th scope="col">SNo</th>
            <th scope="col">Transaction Number</th>
            <th scope="col">Amount</th>
            <th scope="col">Type</th>
            <th scope="col">Status</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${transactionList}">
            <tr>
                <td>1</td>
                <td>${it.transactionNumber}</td>
                <td>${it.amount}</td>
                <td>${it.type}</td>
                <td>${it.status}</td>
            </tr>
        </g:each>

        </tbody>
    </table>
</div>
</div>
</body>
<script>
    $('#ajaxbtn').click(function () {
        $.ajax({
            url: "${g.createLink(controller:'public',action:'ajaxHitDummy')}",
            data: {email: "abc.com", amount: 123},
            dataType: 'json',
            success: function (responseData) {
                $("#myModal").html(responseData.template);
            },
            error: function (request, status, error) {
                alert(error)
            }
        });
    });
</script>
</html>