package myproject

class UserInputTable {
    static mapWith = "mongo"
     int userId
     int userStrategyId
     String strategyType
     int token1
     int token2
     int token3
     int token4
     int token5
     String symbol
     String feature1
     String feature2
     String feature3
     int orderLot1
     int totalLot1
     int marketPrice1
     int priceDiff1
     int tradedLot1
     int remainingLot1
     int orderLot2
     int totalLot2
     int marketPrice2
     int priceDiff2
     int tradedLot2
     int remainingLot2
    int strategyIdPositive
    int strategyIdNegative
    int statusPositive
    int statusNegative
    int modQuantity1=0
    int modQuantity2 =0
    static constraints = {
        userId(nullable:false)
        strategyType(nullable: false)
        token1(nullable: false)
        token2(nullable: false)
        symbol(nullable: false)
        feature1(nullable: false)
        feature2(nullable: false)
        feature3(nullable: true)
        strategyIdPositive(nullable:true)
        strategyIdNegative (nullable:true)
    }
    static mapping = {
//        table "UserInputTable"
//        userStrategyId column: "userStrategyId"
//        id generator: 'assigned'
        id column: "userStrategyId"
    }

}
