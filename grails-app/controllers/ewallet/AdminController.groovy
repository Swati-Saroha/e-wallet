package ewallet

import Ewallet.Request
import grails.plugin.springsecurity.annotation.Secured

@Secured("isAuthenticated()")
class AdminController {

    def adminService

    @Secured("isAuthenticated()")
    def index() {
        List<Request> requestList = adminService.fetchPendingRequest()
        [requestList: requestList]
       println(requestList)
        }


    }

