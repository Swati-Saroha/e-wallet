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

    $('#rechargeButton').on('click', function () {
        $.ajax({
            url: BASE_URL + "/public/recharge",
            data: {amount: 123},
            dataType: 'json',
            success: function (responseData) {
                $("#rechargeModal").html(responseData.template);
            },
            error: function (request, status, error) {
                alert("Error")
            }
        })
    })

});

function adminApprove(button) {
    var requestId = $(button).attr('data-requestId');
    $.ajax({
        url: BASE_URL + "/admin/approveRequest",
        data: {requestId: requestId},
        dataType: 'json',
        success: function () {
           location.reload()
        },
        error: function () {
            alert("Error")
        }
    })
}
function adminDecline(button) {
    var requestId = $(button).attr('data-requestId');
    $.ajax({
        url: BASE_URL + "/admin/declineRequest",
        data: {requestId: requestId},
        dataType: 'json',
        success: function () {
        },
        error: function () {
            alert("Error")
        }
    })
}

function fetchApproveRequestList() {
    $.ajax({
        url: BASE_URL + "/admin/fetchApproveRequestList",
        dataType: 'json',
        success: function (response) {
            $("#requestListData").html(response.requestTemplate)
        },
        error: function () {
            alert("Error")
        }
    })
}

function fetchDeclineRequestList() {
        $.ajax({
            url: BASE_URL + "/admin/fetchDeclineRequestList",
            dataType: 'json',
            success: function (response) {
                $("#requestListData").html(response.requestTemplate)
            },
            error: function () {
                alert("Error")
            }
        })
    }



