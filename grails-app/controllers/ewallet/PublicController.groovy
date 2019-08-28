package ewallet

import Ewallet.Transaction
import Ewallet.User
import Ewallet.Wallet
import co.RegistrationCO
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import groovy.text.Template
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

        println(transactionList)

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
    def ajaxHitDummy(String email, Double amount) {
        String myTemplateString = groovyPageRenderer.render(template:'/public/Templates/ewallethome')
        Map map = [template: myTemplateString]
        render map as JSON
    }
}
