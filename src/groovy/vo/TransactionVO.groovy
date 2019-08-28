package vo

import Ewallet.Transaction
import enums.TransactionStatus
import enums.TransactionType

class TransactionVO {

    String transactionNumber
    Double amount
    TransactionType type
    TransactionStatus status

    TransactionVO(Transaction transaction) {
        this.transactionNumber = transaction.number
        this.amount = transaction.amount
        this.type = transaction.type
        this.status = transaction.status
    }

}
