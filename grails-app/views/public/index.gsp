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
    <div class="badge-light">
        <p class="text-md-center"><font size="6"/><b>E-WALLET</b></p>

        <h1 >RS.100</h1>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Pay</button>
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

%{--MODAL--}%
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Modal Header</h4>
            </div>
            <g:form>
                 <div class="modal-body">
                    <div class="payment_form">
                        <label for="email">Enter email</label>
                        <g:passwordField name="email" class="form-control" placeholder="email"/>
                    </div>

                     <div>
                         <label for="amount">Enter amount</label>
                         <g:passwordField name="amount" class="form-control" placeholder="amount"/>
                     </div>


                    %{--<table>
                        <tr>
                            <td>
                                <label for="email" class="col-sm-2 col-form-label">Enter email</label>
                            </td>
                            <td>
                                <g:passwordField name="email" class="form-control" placeholder="email"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="amount" class="col-sm-2 col-form-label">Enter amount</label>
                            </td>
                            <td>
                                    <g:passwordField name="amount" class="form-control" placeholder="amount"/>
                                </div>
                            </td>
                        </tr>
                    </table>--}%
                 </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Pay</button>
            </div>
            </g:form>
        </div>
    </div>
</div>
</body>
</html>