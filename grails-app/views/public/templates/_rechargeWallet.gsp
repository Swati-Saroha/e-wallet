<div class="modal-dialog modal-sm">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Recharge your Wallet</h4>
        </div>
        <g:form name="recharge" controller="request" action="save">
            <div class="modal-body">
                <div class="recharge_form">
                    <label for="amount">Enter amount</label>
                    <g:textField name="amount" class="form-control" placeholder="amount"/>
                </div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </g:form>
    </div>
</div>
