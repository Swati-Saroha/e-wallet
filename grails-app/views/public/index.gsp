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
        <h2><g:render template="/public/Templates/ewallethome"/></h2>
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
                <tr>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                </tr>
                </tbody>
            </table>
        </div>
</div>
</body>
</html>