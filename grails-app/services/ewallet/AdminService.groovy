package ewallet

import Ewallet.Request
import enums.RequestStatus
import grails.transaction.Transactional

@Transactional
class AdminService {

    List<Request> fetchPendingRequest() {
        List<Request> requestList = Request.findAllByStatus(RequestStatus.PENDING)
        return requestList

   }
}
