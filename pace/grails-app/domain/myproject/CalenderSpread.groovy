package myproject

import com.sun.corba.se.spi.ior.ObjectId
import org.*

/**
 * Created by Digvijay on 11/7/14.
 */
class CalenderSpread {

    String instrument
    String buySymbol
    String sellSymbol
    int priceDiff
    int orderQty
    int totalQty
    String modAdd

//    static mapping = {
//        instrument column: "Instrument"
//        buySymbol column: "BuySymbol"
//        sellSymbol column: "SellSymbol"
//        priceDiff column: "PriceDiff"
//        orderQty column: "OrderQty"
//        totalQty column: "TotalQty"
//        modAdd column: "ModAdd"
//        version false
//    }
//
//    static constraints = {
//        instrument(nullable:false)
//        buySymbol(nullable:false)
//        sellSymbol(nullable: false)
//        priceDiff(nullable: false)
//        orderQty(nullable: false)
//        totalQty(nullable: false)
//        modAdd(nullable: true)
//    }
}
