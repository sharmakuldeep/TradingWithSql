package myproject

class ContractTable {
     int token
     int assetToken
     String instrumentName
    String symbol
    String series
    String reserve1
    BigInteger expiryDate
    String strikePrice
    String  optionType
    int category
    int cALevel
    String reserve2
    int reservedIdentifier
    int  permittedToTrade
    BigInteger issueRate
    int securityStatus
    BigInteger eligibility
    String  reserved44
    int  securityStatus_copy1
    BigInteger eligibility_copy1
    String  reserved44_copy1
    int securityStatus_copy2
    int eligibility_copy2
    String reserved44_copy2
    int securityStatus_copy3
    BigInteger eligibility_copy3
    String  reserved44_copy3
    BigInteger issueStartDate
    BigInteger interestPaymentDate
    BigInteger issueMaturityDate
    BigInteger marginPercentage
    BigInteger minimumLotQuantity
    BigInteger boardLotQuantity
    BigInteger tickSize
    BigInteger issuedCapital
    BigInteger freezeQuantity
    BigInteger warningQuantity
    BigInteger listingDate
    BigInteger expulsionDate
    BigInteger readmissionDate
    BigInteger recordDate
    int contractTablecol
    BigInteger noDeliveryEndDate
    BigInteger lowPriceRange
    BigInteger highPriceRange
    BigInteger exDate
    BigInteger bookClosureStartDate
    BigInteger bookClosureEndDate
    BigInteger localLDBUpdateDateTime
    BigInteger exerciseStartDate
    BigInteger exerciseEndDate
    int  oldTokenNumber
    int creditRating
    String  name
    int  eGMAGM
    int  interestDivident
    int  rightsBonus
    int  mFAON
    String remarks
    String  exStyle
    String  exAllowed
    String  exRejectionAllowed
    String  plAllowed
    String  checkSum
    int isCOrporateAdjusted
    int symbolForAsset
    BigInteger instrumentOfAsset
    BigInteger basePrice
    String deleteFlag

    static constraints = {
        token(nullable:false, max:11, unique: true)
        assetToken(nullable:true, max:11)
        instrumentName(nullable: true, maxSize: 45)
        symbol(nullable: true, maxSize: 45)
        series(nullable: true, maxSize: 45)
        reserve1(nullable: true, maxSize: 1)
        expiryDate(nullable: true)
        strikePrice(nullable: true)
        optionType(nullable: true, maxSize: 2)
        category(nullable:true, max: 11)
        cALevel(nullable:true, max: 11)
        reserve2(nullable: true, maxSize: 1)
        reservedIdentifier(nullable:true, max: 11)
        permittedToTrade(nullable:true, max: 11)
        issueRate(nullable:true)
        securityStatus(nullable:true, max: 11)
        eligibility(nullable:true)
        reserved44(nullable: true,maxSize: 1)
        securityStatus_copy1(nullable:true, max: 11)
        eligibility_copy1(nullable:true)
//        reserved44_copy1(nullable: true,maxSize: 1)
        reserved44_copy1(nullable:true)
        reserved44_copy2 (nullable: true,maxSize: 1)
        securityStatus_copy3(nullable:true, max: 11)
        securityStatus_copy2 (nullable:true, max: 11)
        eligibility_copy2(nullable:true, max:11)
        eligibility_copy3 (nullable:true)
        reserved44_copy3 (nullable: true,maxSize: 1)
        issueStartDate(nullable:true)
        interestPaymentDate (nullable:true)
        issueMaturityDate(nullable:true)
        marginPercentage (nullable:true)
        minimumLotQuantity(nullable:true)
        boardLotQuantity(nullable:true)
        tickSize (nullable:true)
        issuedCapital(nullable:true)
        freezeQuantity(nullable:true)
        warningQuantity(nullable:true)
        listingDate (nullable:true)
        expulsionDate   (nullable:true)
        readmissionDate (nullable:true)
        recordDate (nullable:true)
        contractTablecol (nullable:true, max: 11)
        noDeliveryEndDate(nullable:true)
        lowPriceRange(nullable:true)
        highPriceRange(nullable:true)
        exDate(nullable:true)
        bookClosureStartDate (nullable:true)
        bookClosureEndDate   (nullable:true)
        localLDBUpdateDateTime  (nullable:true)
        exerciseStartDate  (nullable:true)
        exerciseEndDate   (nullable:true)
        oldTokenNumber  (nullable:true, max: 11)
        creditRating  (nullable:true, max: 11)
        name   (nullable: true,maxSize: 100)
        eGMAGM  (nullable:true, max: 11)
        interestDivident  (nullable:true, max: 11)
        rightsBonus (nullable:true, max: 11)
        mFAON (nullable:true, max: 11)
        remarks (nullable: true,maxSize: 100)
        exStyle(nullable: true,maxSize: 1)
        exAllowed  (nullable: true,maxSize: 45)
        exRejectionAllowed   (nullable: true,maxSize: 45)
        plAllowed     (nullable: true,maxSize: 45)
        checkSum (nullable: true,maxSize: 45)
        isCOrporateAdjusted  (nullable:true, max: 11)
        symbolForAsset   (nullable:true, max: 11)
        instrumentOfAsset(nullable:true)
        basePrice (nullable:true)
        deleteFlag (nullable: true,maxSize: 1)
    }

    static mapping = {
        table "ContractTable"
        token column: "token"
        assetToken column: "assetToken"
        instrumentName column: "instrumentName"
        symbol column: "symbol"
        series column: "series"
        reserve1 column: "reserve1"
        expiryDate column: "expiryDate"
        strikePrice column: "strikePrice"
        optionType column: "optionType"
        category column: "category"
        cALevel column: "cALevel"
        reserve2 column: "reserve2"
        reservedIdentifier column: "reservedIdentifier"
        permittedToTrade column: "permittedToTrade"
        issueRate column: "issueRate"
        securityStatus column: "securityStatus"
        eligibility column: "eligibility"
        reserved44 column: "reserved44"
        securityStatus_copy1 column: "securityStatus_copy1"
        eligibility_copy1 column: "eligibility_copy1"
        reserved44_copy1 column: "reserved44_copy1"
        reserved44_copy2 column: "reserved44_copy2"
        securityStatus_copy3 column: "securityStatus_copy3"
        securityStatus_copy2 column: "securityStatus_copy2"
        eligibility_copy2 column: "eligibility_copy2"
        eligibility_copy3 column: "eligibility_copy3"
        reserved44_copy3 column: "reserved44_copy3"
        issueStartDate column: "issueStartDate"
        interestPaymentDate column: "interestPaymentDate"
        issueMaturityDate column: "issueMaturityDate"
        marginPercentage column: "marginPercentage"
        minimumLotQuantity column: "minimumLotQuantity"
        boardLotQuantity column: "boardLotQuantity"
        tickSize column: "tickSize"
        issuedCapital column: "issuedCapital"
        freezeQuantity column: "freezeQuantity"
        warningQuantity column: "warningQuantity"
        listingDate column: "listingDate"
        expulsionDate column: "expulsionDate"
        readmissionDate column: "readmissionDate"
        recordDate column: "recordDate"
        contractTablecol column: "contractTablecol"
        noDeliveryEndDate column: "noDeliveryEndDate"
        lowPriceRange column: "lowPriceRange"
        highPriceRange column: "highPriceRange"
        exDate column: "exDate"
        bookClosureStartDate column: "bookClosureStartDate"
        bookClosureEndDate column: "bookClosureEndDate"
        localLDBUpdateDateTime column: "localLDBUpdateDateTime"
        exerciseStartDate column: "exerciseStartDate"
        oldTokenNumber column: "oldTokenNumber"
        exerciseEndDate column: "exerciseEndDate"
        creditRating column: "creditRating"
        name column: "name"
        eGMAGM column: "eGMAGM"
        interestDivident column: "interestDivident"
        rightsBonus column: "rightsBonus"
        mFAON column: "mFAON"
        remarks column: "remarks"
        exStyle column: "exStyle"
        exAllowed column: "exAllowed"
        exRejectionAllowed column: "exRejectionAllowed"
        plAllowed column: "plAllowed"
        checkSum column: "checkSum"
        isCOrporateAdjusted column: "isCOrporateAdjusted"
        symbolForAsset column: "symbolForAsset"
        instrumentOfAsset column: "instrumentOfAsset"
        basePrice column: "basePrice"
        deleteFlag column: "deleteFlag"


    }
}
