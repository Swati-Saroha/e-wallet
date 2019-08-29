var BASE_URL = "http://localhost:8080/Ewallet";

$(document).ready(function () {
    $('#paymentModalButton').on('click', function () {
        $.ajax({
            url: BASE_URL + "/public/payment",
            dataType: 'json',
            success: function (responseData) {
                $("#myModal").html(responseData.template);
            },
            error: function (request, status, error) {
                alert("this is error")
            }
        })
    });
    $('#rechargeButton').on( 'click' , function () {
        $.ajax({
            url: BASE_URL + "/public/recharge",
            data: {amount: 123},
            dataType: 'json',
            success: function (responseData) {
                $("#myModal").html(responseData.template);
            },
            error: function (request, status, error) {
                alert("this is errors")
            }
    })
    })
});



