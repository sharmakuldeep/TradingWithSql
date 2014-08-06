package myproject

class OrderTable {
    BigInteger user_id
    BigInteger order_id
    BigInteger exch_order_id
    BigInteger token_no
    BigInteger price
    BigInteger qty
    BigInteger stategy_id
    int status
    Date date_time

    static constraints = {
        user_id(nullable: false)
        order_id(nullable: false)
        exch_order_id(nullable: false)
        token_no(nullable: false)
        price(nullable: false)
        qty(nullable:false )
        stategy_id(nullable: false)
        status(nullable:false)
        date_time(nullable: false)
    }
    static mapping = {
        table  "OrderTable"
        version false
    }
}
