package myproject

class UserStrategyTable {
   int  strategy_type
   int user_id
   BigInteger strategy_id
   BigInteger order_id
    BigInteger order_qty
    BigInteger total_qty
    BigInteger open_qty
    BigInteger fill_qty
    static constraints = {
        strategy_type(nullable:false)
        user_id(nullable:false)
        strategy_id(nullable: false)
        order_id(nullable: false)
        order_qty(nullable: false)
        total_qty(nullable: false)
        open_qty(nullable: false)
        fill_qty(nullable: false)
    }

    static mapping = {
        table  "UserStrategyTable"
    }
}
