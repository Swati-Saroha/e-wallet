package ewallet

import Ewallet.Request
import Ewallet.User
import enums.RequestStatus
import grails.transaction.Transactional
import vo.RequestVO

@Transactional
class RequestService {

    def springSecurityService
    def groovyPageRenderer

    Map save(Double amount) {

        User loggedInUser = springSecurityService.currentUser
        if (amount <= 10000) {
            Request request = new Request(amount: amount, user: loggedInUser, status: RequestStatus.PENDING)
            request.save(failOnError: true)
            return [status: true, message: "Request has been initiated"]
        } else {
            return [status: false, message: "You can add amount upto 10000 only"]
        }

    }

    Map approveRequest(String requestId) {
        Request request = Request.findById(requestId.toLong())
        request.status = RequestStatus.APPROVED
        request.user.wallet.balance += request.amount
        request.save(failOnError: true)
        return [:]
    }

    Map declineRequest(String requestId) {
        Request request = Request.findById(requestId.toLong())
        request.status = RequestStatus.DECLINE
        request.save(failOnError: true)
        return [:]
    }

    String fetchApproveRequestList() {
        List<Request> requestList = Request.findAllByStatus(RequestStatus.APPROVED)
        List<RequestVO> requestVOList = []
        requestList.each { request ->
            requestVOList << new RequestVO(request)
        }

        println(requestList)
        String requestTemplate = groovyPageRenderer.render(template: '/public/templates/request', model: [requestVOList: requestVOList])
        return requestTemplate
    }

    List<RequestVO> fetchPendingRequest() {
        List<Request> requestList = Request.findAllByStatus(RequestStatus.PENDING)
        List<RequestVO> requestVOList = []
        requestList.each { request ->
            requestVOList << new RequestVO(request)
        }
        return requestVOList
    }


    String fetchDeclineRequestList() {
        List<Request> requestList = Request.findAllByStatus(RequestStatus.DECLINE)
        List<RequestVO> requestVOList = []
        requestList.each { request ->
            requestVOList << new RequestVO(request)
        }
        println(requestList)
        String requestTemplate = groovyPageRenderer.render(template: '/public/templates/request', model: [requestVOList: requestVOList])
        return requestTemplate
    }
}