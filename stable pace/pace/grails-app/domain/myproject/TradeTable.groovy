package myproject

class TradeTable {

     int trade_id
     long orderId
     long strategyId
     BigInteger exchOrdNum
     BigInteger token
     BigInteger px
     BigInteger qty
     Date date_time = new Date()


    static constraints = {
        trade_id(nullable:false, unique: true)
        exchOrdNum(nullable: false)
        token(nullable:false)
        px(nullable: false)
        qty(nullable: false)
        date_time(nullable: false)
    }

    static mapping = {
        table  "TradeTable"
//        id name:'pkey'
    }
}
