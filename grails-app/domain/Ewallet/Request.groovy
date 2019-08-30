package Ewallet

import enums.RequestStatus

class Request {

    RequestStatus status
    Double amount

    static belongsTo = [user: User]

    static constraints = {
        amount min: 1d, max: 10000d
    }
}
