package ewallet

import grails.plugin.springsecurity.annotation.Secured

@Secured("isAuthenticated()")
class RequestController {

    def requestService

    def save(Double amount) {
        Map map = requestService.save(amount)
        redirect(controller: 'public', action: 'index', params: map)
    }
}
