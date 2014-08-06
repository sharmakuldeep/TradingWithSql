package myproject

/**
 * Created by Digvijay on 11/7/14.
 */
class Synthetic {

    int id
    String symbol
    Date expiry
    String strikePrice
    String conRev
    int orderQty
    int totalQty
    int priceDiff
    String modAdd

    static mapping = {
        id column: "Id"
        symbol column: "Symbol"
        expiry column: "Expiry"
        strikePrice column: "StrikePrice"
        conRev column: "ConRev"
        orderQty column: "OrderQty"
        totalQty column: "TotalQty"
        priceDiff column: "PriceDiff"
        modAdd column: "ModAdd"
    }

    static constraints = {
        id(nullable: false)
        symbol(nullable:false)
        expiry(nullable: false)
        strikePrice(nullable: false)
        conRev(nullable:false)
        orderQty(nullable: false)
        totalQty(nullable: false)
        priceDiff(nullable: false)
        modAdd(nullable: true)
    }
}
