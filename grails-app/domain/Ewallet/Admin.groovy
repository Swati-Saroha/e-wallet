package Ewallet

import enums.RequestStatus

class Admin {

    String email
    Double amount
    RequestStatus status
    String action

    static hasMany = [request : Request]

    static constraints = {

    }
}
