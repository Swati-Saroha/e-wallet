<div>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>SNo</th>
            <th>Email</th>
            <th>Amount</th>
            <th>Status</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${requestVOList}" var="request" status="i">
            <tr>
                <td>${i + 1}</td>
                <td>${request.email}</td>
                <td>${request.amount}</td>
                <td>${request.status}</td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>

