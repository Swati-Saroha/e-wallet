package ewallet

import Ewallet.Request
import Ewallet.User
import enums.RequestStatus
import grails.transaction.Transactional

@Transactional
class RequestService {

    def springSecurityService

    Map save(Double amount) {

        User loggedInUser = springSecurityService.currentUser
        if (amount) {
            Request request = new Request(amount: amount, user: loggedInUser, status: RequestStatus.PENDING)
            request.save(failOnError: true)
            return [status: true, message: "Request has been initiated"]
        } else {
            return [status: false, message: "Unable to request"]
        }

    }

    def requestId(params) {
        return Request.findById(id)
    }

}
