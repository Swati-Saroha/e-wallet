package ewallet

import co.RegistrationCO
import grails.plugin.springsecurity.annotation.Secured
@Secured("isAnonymous()")
class PublicController {

    def userService

    @Secured("isAuthenticated()")
    def index() {}

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
