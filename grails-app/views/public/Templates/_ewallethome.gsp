<div>
    <h1 class="amount">${balance}</h1>
%{--<g:if test="${status = true}">
    <h4 class="alert alert-success">${message}</h4>
</g:if>
<g:else>
    <h4  class="alert alert-danger">${message}</h4>
</g:else>--}%

    <g:if test="${flash.success}">
        <h4 class="alert alert-success">${flash.success}</h4>
    </g:if>
    <g:if test="${flash.error}">
        <h4  class="alert alert-danger">${flash.error}</h4>
    </g:if>
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Pay</button>
    <button type="button" class="btn btn-danger"><g:remoteLink class="logout" controller="logout" method="post"
                                                               asynchronous="false"
                                                               onSuccess="location.reload()">Logout</g:remoteLink></button>

</div>
%{--MODAL--}%
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Modal Header</h4>
            </div>
            <g:form name="payment" controller="payment" action="pay">
        <div class="modal-body">
            <div class="payment_form">
                <label for="email">Enter email</label>
                <g:textField name="email" class="form-control" placeholder="email"/>
            </div>

            <div>
                <label for="amount">Enter amount</label>
                <g:textField name="amount" class="form-control" placeholder="amount"/>
            </div>
        </div>

        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary">Pay</button>
        </div>
        </g:form>
    </div>
</div>