package ewallet

import Ewallet.User
import Ewallet.Wallet
import grails.plugin.springsecurity.annotation.Secured

@Secured("isAuthenticated()")
class PaymentController {

    def paymentService


    def pay(String email, Double amount) {
        Map map = paymentService.pay(email, amount)
        redirect(controller: 'public', action: 'index', params: map)
    }

   /* def submit(Double amount) {
        Map map = paymentService.submit(amount)
        redirect()
    }
*/
}
