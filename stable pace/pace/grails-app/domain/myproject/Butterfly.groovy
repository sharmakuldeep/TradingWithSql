package myproject
class Butterfly {

    int id
    String instrument
    String symbol
    String callPut
    Date expiry
    String strike1
    String strike2
    String strike3
    int priceDiff
    int orderQty
    int totalQty
    String buySell
    String modAdd

    static mapping = {
        id column: "Id"
        symbol column: "Symbol"
        callPut column: "CallPut"
        expiry column: "Expiry"
        strike1 column: "Strike1"
        strike2 column: "Strike2"
        strike3 column: "Strike3"
        priceDiff column: "PriceDiff"
        orderQty column: "OrderQty"
        totalQty column: "TotalQty"
        buySell column: "BuySell"
        modAdd column: "ModAdd"
    }

    static constraints = {
        id(nullable: false)
        symbol(nullable:false)
        callPut(nullable:false)
        expiry(nullable: false)
        strike1(nullable: false)
        strike2(nullable: false)
        strike3(nullable: false)
        priceDiff(nullable: false)
        orderQty(nullable: false)
        totalQty(nullable: false)
        buySell(nullable:false)
        modAdd(nullable: true)
    }
}