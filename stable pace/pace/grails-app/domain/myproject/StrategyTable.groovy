package myproject

class StrategyTable {
   int strategy_id
//    int  strategy_type
    int token1
    int token2
    int token3
    int token4
    int token5
    int price_diff1
    int price_diff2
    int price_diff3
    int buy_sell
    int strategy_type

    static constraints = {
//        strategy_id(nullable:false, unique: true)
//        strategy_type(nullable:true)
        token1(nullable:true)
        token2(nullable:true)
        token3(nullable:true)
        token4(nullable:true)
        token5(nullable:true)
        price_diff1(nullable:true)
        price_diff2(nullable:true)
        price_diff3(nullable:true)
        buy_sell(nullable:true)
        strategy_type(nullable:false)
    }
    static mapping = {
            table  "StrategyTable"
            id name:'strategy_id'
            version false
    }


}
