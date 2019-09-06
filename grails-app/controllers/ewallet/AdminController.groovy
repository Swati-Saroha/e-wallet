package ewallet

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import vo.RequestVO

@Secured("ROLE_ADMIN")
class AdminController {

    def requestService

    def index() {
        List<RequestVO> requestVOList = requestService.fetchPendingRequest()
        [requestList: requestVOList]
    }

    def fetchDeclineRequestList() {
        Map map = [:]
        String requestTemplate = requestService.fetchDeclineRequestList()
        map.put("requestTemplate", requestTemplate)
        render map as JSON
    }

    def fetchApproveRequestList() {
        Map map = [:]
        String requestTemplate = requestService.fetchApproveRequestList()
        map.put("requestTemplate", requestTemplate)
        render map as JSON
    }

    def approveRequest(String requestId) {
        Map reqApprove = requestService.approveRequest(requestId)
        render reqApprove as JSON
    }

    def declineRequest(String requestId) {
        Map reqDecline = requestService.declineRequest(requestId)
        render reqDecline as JSON
    }

}
