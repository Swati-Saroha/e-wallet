package ewallet


import grails.plugin.springsecurity.annotation.Secured
import vo.RequestVO

@Secured("ROLE_ADMIN")
class AdminController {

    def adminService
    def requestService


    def index() {
        List<RequestVO> requestVOList = adminService.fetchPendingRequest()
        [requestList: requestVOList]
    }

    def approveRequest() {
      println(params)
    }

}
