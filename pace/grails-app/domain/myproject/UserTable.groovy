package myproject

class UserTable {
    int user_id
    String user_name
    String password
    String user_access_lavel
    int num_of_tokens_allowed1
    int num_of_tokens_allowed
    BigInteger board_lot_qyt_limit
    BigInteger buy_sell_expoe_limit
    BigInteger buy_sell_expoe_used
    BigInteger turn_over_limit
    BigInteger turn_over_used
    BigInteger check_circuit_limit
    BigInteger frees_qyt
    BigInteger qyt_used
    BigInteger gross_exp
    BigInteger gross_exp_used
    BigInteger m_to_m_limit
    BigInteger m_to_m_limit_used
    BigInteger order_limit
    BigInteger pending_value_limit
    BigInteger cur_pending_value
    BigInteger pending_qty
    BigInteger cur_pending_qty
    BigInteger last_update_time
    int rank

    static constraints = {
        user_id(nullable:false)
        user_name(nullable: false, maxSize: 45)
        password(nullable: false, maxSize: 45)
        user_access_lavel(nullable: false, maxSize: 45)
        num_of_tokens_allowed1(nullable:false)
        num_of_tokens_allowed(nullablde:false)
        board_lot_qyt_limit(nullable: false)
        buy_sell_expoe_limit(nullable: false)
        buy_sell_expoe_used(nullable: false)
        turn_over_limit(nullable: false)
        turn_over_used(nullable: false)
        check_circuit_limit(nullable:false)
        frees_qyt(nullable:false)
        qyt_used(nullable: false)
        gross_exp(nullable: false)
        gross_exp_used(nullable: false)
        m_to_m_limit(nullable: false)
        m_to_m_limit_used(nullable: false)
        order_limit(nullable: false)
        pending_value_limit(nullable: false)
        cur_pending_value(nullable: false)
        pending_qty(nullable: false)
        cur_pending_qty(nullable: false)
        last_update_time(nullable: false)
        rank(nullable:false)
    }

    static mapping = {
        table "UserTable"
        id name:'user_id'
    }

}
