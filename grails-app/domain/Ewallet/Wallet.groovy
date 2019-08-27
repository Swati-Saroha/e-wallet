package Ewallet

class Wallet {

    boolean isActive
    double balance

    static belongsTo = [user: User]
    static hasMany = [transaction: Transaction]

}



