package myproject

class ModStrategyTable {

       int mod_id
       int  user_id
       BigInteger strategy_id
       BigInteger order_qty
       BigInteger total_qty
       int status
       Date date_time = new Date()
//    `mod_id` bigint(20) NOT NULL AUTO_INCREMENT,

    static constraints = {
//        mod_id(nullable: false, unique: true)
        user_id(nullable:false, max: 11)
        strategy_id(nullable:false)
        order_qty(nullable: false)
        total_qty(nullable: false)
        status(nullable:false, max: 11)
        date_time(nullable: false)
    }
    static mapping = {
        table "ModStrategyTable"
        id name:'mod_id'
        version false
    }
}
