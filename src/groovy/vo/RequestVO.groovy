package vo


import enums.RequestStatus

class RequestVO {
    String email
    Double amount
    RequestStatus status
    String action

    RequestVO() {
        this.email =request.email
        this.amount = request.amount
        this.status = request.status
        this.action = request.action
    }
}
