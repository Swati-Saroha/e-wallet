package ewallet

import Ewallet.Transaction
import Ewallet.User
import co.RegistrationCO
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import vo.TransactionVO

@Secured("isAnonymous()")
class PublicController {

    def userService

    def springSecurityService

    def groovyPageRenderer


    @Secured("isAuthenticated()")
    def index() {
        User loggedInUser = springSecurityService.currentUser
        if (params.status && params.status == "true") {
            flash.success = params.message
        } else if (params.status == "false") {
            flash.error = params.message
        }
        List<Transaction> transactionList = Transaction.findAllByWallet(loggedInUser.wallet)


        List<TransactionVO> transactionVOList = []

        transactionList.each { transaction ->
            transactionVOList << new TransactionVO(transaction)

        }
        [balance: loggedInUser.wallet.balance, transactionList: transactionVOList]
    }

    @Secured("isAnonymous()")
    def register() {}

    def registration(RegistrationCO registrationCO) {
        if (!registrationCO.validate()) {
            render(view: 'register', model: [registrationCO: registrationCO])
        } else {
            userService.add(registrationCO)
            render(view: 'register', model: [success: true])
        }
    }


    @Secured("isAuthenticated()")
    def payment() {
        String myTemplateString = groovyPageRenderer.render(template: '/public/templates/ewalletHome')
        Map map = [template: myTemplateString]
        render map as JSON

    }

    @Secured("isAuthenticated()")
    def recharge(Double amount) {
        String rechargeTemplate = groovyPageRenderer.render(template: '/public/templates/rechargeWallet')
        Map map = [template: rechargeTemplate]
        render map as JSON
    }
}
