package ewallet

import Ewallet.User
import grails.transaction.Transactional

@Transactional
class BootStrapService {

    def serviceMethod() {

    }

    void initAdmin() {
        if (!User.findByUsername("admin")) {
            User user = new User(username: "admin", password: "root")
            user.save(failOnError: true)
        }
    }
}
