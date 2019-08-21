package ewallet

import co.RegistrationCO

class PublicController {

    def index()
    {

    }
    def register () {

    }
    def registration(RegistrationCO registrationCO) {
        println("== params : "+params.firstName)

        if (!registrationCO.validate()) {
            render(view: 'register', model: [registrationCO: registrationCO])
        } else {
            render(view: 'register', model: [success: true])
        }
    }
}
