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


