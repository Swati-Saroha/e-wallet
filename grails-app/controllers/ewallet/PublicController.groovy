package ewallet

import Ewallet.User
import Ewallet.Wallet
import co.RegistrationCO
import grails.plugin.springsecurity.annotation.Secured

@Secured("isAnonymous()")
class PublicController {

    def userService

    def springSecurityService

    @Secured("isAuthenticated()")
    def index() {
        User loggedInUser = springSecurityService.currentUser
        println(params)
        if (params.status && params.status == "true") {
            flash.success = params.message
        } else if (params.status == "false") {
            flash.error = params.message
        } else {
                print("else part")
        }
        [balance: loggedInUser.wallet.balance]
    }

    @Secured("isAnonymous()")
    def register() {}

    def registration(RegistrationCO registrationCO) {
        if (!registrationCO.validate()) {
            render(view: 'register', model: [registrationCO: registrationCO])
        } else {
            userService.add(registrationCO)
            render(view: 'register', model: [success: true])
        }
    }
}
