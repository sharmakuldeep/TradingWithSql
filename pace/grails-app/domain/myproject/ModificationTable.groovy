package myproject

class ModificationTable {

    int user_id
    BigInteger strategy_id
    Date  date_time =new Date()

    static constraints = {

        user_id(nullable:false, unique: true)
        strategy_id(nullable: false)
        date_time(nullable: false)
    }
    static mapping = {
        table "ModificationTable"
        version false
    }
    static mapWith = "mongo"
}
