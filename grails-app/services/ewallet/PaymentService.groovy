package ewallet

import Ewallet.Transaction
import Ewallet.User
import enums.TransactionStatus
import enums.TransactionType
import grails.transaction.Transactional

@Transactional
class PaymentService {

    def springSecurityService


    Map pay(String email, Double amount) {
        User user = User.findByEmail(email)
        User loggedInUser = springSecurityService.currentUser
        if (user != null) {
            if (loggedInUser.wallet.balance >= amount) {
                user.wallet.balance += amount
                user.save(failOnError: true)
                loggedInUser.wallet.balance -= amount
                loggedInUser.save(failOnError: true)

                saveTransaction(user, TransactionType.CREDITED, amount)
                saveTransaction(loggedInUser, TransactionType.DEBITED, amount)

                return [status: true, message: "Amount has been paid"]
            } else {
                return [status: false, message: "Amount is out of your wallet limit"]
            }
        } else {
            return [status: false, message: "User does not exist"]
        }
    }

    void saveTransaction(User user, TransactionType type, Double amount) {
        Transaction transaction = new Transaction(
                number: "324465",
                amount: amount,
                summary: "loan",
                status: TransactionStatus.COMPLETED,
                type: type,
                wallet: user.wallet
        )
        transaction.save(failOnError: true)
    }
}
