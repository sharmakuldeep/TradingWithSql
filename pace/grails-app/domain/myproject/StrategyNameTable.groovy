package myproject

class StrategyNameTable {
      String strategy_name
      int startegy_type

//    UNIQUE INDEX `strategy_name_UNIQUE` (`strategy_name` ASC),
//    UNIQUE INDEX `startegy_type_UNIQUE` (`startegy_type` ASC));

    static constraints = {
        strategy_name(nullable: false, unique: true)
        startegy_type(nullable:false, unique: true)
    }

    static mapping = {
        table  "StrategyNameTable"
    }
}
