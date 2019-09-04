package ewallet

import Ewallet.Role
import Ewallet.User
import Ewallet.UserRole
import Ewallet.Wallet
import co.RegistrationCO
import grails.transaction.Transactional

@Transactional
class UserService {

    void add(RegistrationCO registrationCO) {
        User user = new User(
                firstName: registrationCO.firstName,
                lastName: registrationCO.lastName,
                username: registrationCO.email,
                email: registrationCO.email,
                password: registrationCO.password,
                wallet: new Wallet(isActive: true, balance: 0.0)
        )
        user.save(failOnError: true)
        UserRole userRole = new UserRole(user: user, role: Role.findByAuthority("ROLE_CUSTOMER"))

        userRole.save(failOnError: true)
        List<Role> roles = Role.findAllByAuthority("AT")



    }
}
