package myproject

class StrategySubscriptionRms {
     int user_id
      int startegy_type

    static constraints = {
        startegy_type(nullable:false)
        user_id(nullable:false)
    }
    static mapping = {
        table  "StrategySubscriptionRms"
    }
}
