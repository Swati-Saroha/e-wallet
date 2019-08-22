package ewallet

import Ewallet.User
import Ewallet.Role
import Ewallet.UserRole
import Ewallet.Wallet
import grails.transaction.Transactional

@Transactional
class BootStrapService {

    void initAdmin() {
        if (!User.findByUsername("admin")) {
            User user = new User(
                    username: "admin",
                    email: "admin@ewllet.com",
                    password: "root"
            )
            user.save(flush: true, failOnError: true)
        }
    }

    void initRole() {
        if (!Role.count()) {
            Role adminRole = new Role(authority: "ROLE_ADMIN")
            adminRole.save(failOnError: true)
            Role customerRole = new Role(authority: "ROLE_CUSTOMER")
            customerRole.save(failOnError: true)
        }
    }

    void savAdminRole() {
        if (!UserRole.count()) {
            UserRole adminProfile = new UserRole(
                    user: User.findByUsername("admin"),
                    role: Role.findByAuthority("ROLE_ADMIN")
            )
            adminProfile.save(flush: true, failOnError: true)
        }
    }


}
