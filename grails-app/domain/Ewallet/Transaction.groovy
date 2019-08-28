package Ewallet

import enums.TransactionStatus
import enums.TransactionType

class Transaction {

    String number
    Double amount
    TransactionStatus status
    TransactionType type
    String summary

    static belongsTo = [wallet: Wallet]

    static constraints = {
        summary nullable: true, blank: true
    }

}
