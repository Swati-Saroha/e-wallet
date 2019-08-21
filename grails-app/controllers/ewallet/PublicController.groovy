package ewallet

import co.RegistrationCO
import grails.plugin.springsecurity.annotation.Secured
@Secured("isAnonymous()")
class PublicController {

    @Secured("isAuthenticated()")
    def index() {}

    @Secured("isAnonymous()")
    def register() {}


    def registration(RegistrationCO registrationCO) {
        if (!registrationCO.validate()) {
            render(view: 'register', model: [registrationCO: registrationCO])
        } else {
            render(view: 'register', model: [success: true])
        }
    }
}
