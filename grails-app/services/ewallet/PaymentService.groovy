package ewallet

import Ewallet.User
import Ewallet.Wallet
import grails.transaction.Transactional

@Transactional
class PaymentService {

    def springSecurityService


    Map pay(String email, Double amount) {
        User user = User.findByEmail(email)
        User loggedInUser = springSecurityService.currentUser
        if (user == null) {
            return [status: false, message: "user does not exist"]
        } else {

            if (user.wallet.balance < amount) {
                return [status: false, message: "Amount is out of your limit"]
            }
            else {
                return [status: true, message: "Payment is Successful"]
            }

            user.wallet.balance += amount
            user.save(failOnError: true)

            loggedInUser.wallet.balance -= amount
            loggedInUser.save(failOnError: true)


            return [status: true, message: "Amount has been paid"]
        }

    }
}
