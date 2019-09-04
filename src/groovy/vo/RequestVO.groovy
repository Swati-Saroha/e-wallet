package vo


import enums.RequestStatus
import Ewallet.Request

class RequestVO {
    Long id
    String email
    Double amount
    RequestStatus status

    RequestVO(Request request) {
        this.id = request.id
        this.email = request.user.email
        this.amount = request.amount
        this.status = request.status

    }
}
