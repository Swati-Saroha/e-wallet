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
        if (user != null) {
             if (user.wallet.balance >=  amount) {
                 user.wallet.balance += amount
                 user.save(failOnError: true)

                 loggedInUser.save(failOnError: true)
                 loggedInUser.wallet.balance -= amount

                 return[status: true, message: "Amount has been paid"]
             } else {
                 return[status: false, message: "Amount is out of your wallet limit"]
             }
        } else {
                return[status: false, message: "User does not exist"]
        }
    }
}
