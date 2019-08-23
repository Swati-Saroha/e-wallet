package Ewallet

import enums.TransactionStatus
import enums.TransactionType

class Transaction {

    String number
    Double amount
    TransactionStatus status
    TransactionType type
    String summary
    Wallet paidTo
    Wallet receivedFrom


    static belongsTo = [wallet: Wallet]

    static constraints = {
        summary nullable: true, blank: true
        paidTo nullable: true
        receivedFrom nullable: true
    }
}
