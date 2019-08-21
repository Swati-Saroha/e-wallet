package co

import grails.validation.Validateable

@Validateable
class RegistrationCO {
    String email
    String password
    String confirmPassword
    String firstName
    String lastName


    static constraints = {
        firstName blank: false, nullable: false
        lastName blank: false, nullable: false
        email unique: true
        password minSize: 5
        confirmPassword blank: false, nullable: false

    }
}
