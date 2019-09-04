package ewallet

import Ewallet.Request
import enums.RequestStatus
import grails.transaction.Transactional
import vo.RequestVO

@Transactional
class AdminService {

    List<RequestVO> fetchPendingRequest() {
        List<Request> requestList = Request.findAllByStatus(RequestStatus.PENDING)
        List<RequestVO> requestVOList = []
        requestList.each { request ->
            requestVOList << new RequestVO(request)
        }
        return requestVOList
    }

}
