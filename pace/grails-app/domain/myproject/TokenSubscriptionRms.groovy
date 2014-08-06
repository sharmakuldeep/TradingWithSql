package myproject

class TokenSubscriptionRms {
        int token_no
    BigInteger best_buy_px
    BigInteger best_sell_px
    int userId
    int rank

    static constraints = {
        token_no(nullable:false, unique: true)
        best_buy_px(nullable: true)
        best_sell_px(nullable: true)
        userId(nullable:false)
        rank(nullable:false)
    }

    static mapping = {
        table "TokenSubscriptionRms"
        id name:'userId'
    }
}
