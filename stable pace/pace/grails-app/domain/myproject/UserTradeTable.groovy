package myproject

class UserTradeTable {

    int pkey
    int userId
    int quantity

    static constraints = {
        pkey(nullable:false)
        userId(nullable:false)

    }

    static mapping = {
        table  "UserTradeTable"
    }
}
