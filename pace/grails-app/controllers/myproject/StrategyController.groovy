package myproject

import grails.plugins.springsecurity.Secured


class StrategyController {
  def springSecurityService
    def index() { }
    @Secured("ROLE_ADMIN")
    def strategyMain={
        println("Calling strategy main ...")

    }
    @Secured("ROLE_ADMIN")
    def checkStrategy = {
        println("hello kuldeep")
        println("check streatgy..."+params)

        def id

        if(params.id == "1"){
            println("inside id = 1")
            redirect(controller: "Strategy", action: "butterfly")
        }else if(params.id == "2"){
            println("inside id = 2")
            redirect(controller: "strategy", action: "synthetic")
        }else{
            println("inside id = 3")
            redirect(controller: "strategy", action: "calenderspread")
        }


    }
    @Secured("ROLE_ADMIN")
    def butterfly = {
        def instruments = ContractTable.executeQuery("select distinct a.instrumentName from ContractTable a where  a.instrumentName LIKE \'OPT%\' order by a.instrumentName asc ")
        [instruments:instruments]
}
    @Secured("ROLE_ADMIN")
    def synthetic = {
        println("Calling Synthetic Action ..."+params)
        println("Symbol=="+params.symbol)
        def instruments = ContractTable.executeQuery("select distinct a.instrumentName from ContractTable a order by  a.instrumentName asc")
        [instruments:instruments]
    }
    @Secured("ROLE_ADMIN")
    def calenderSpread = {
        if(params.parameters){
            println('hello kuldeep'+ params.parameters)
        }

          def instruments = ContractTable.executeQuery("select distinct a.instrumentName from ContractTable a where  a.instrumentName LIKE 'FUT%' order by  a.instrumentName asc")
          [instruments:instruments]
    }

    def saveCalenderSpread = {
        println("these are the params to save "+ params)
        def tokenParams1 = params.instrument+params.buySymbol
        def tokenParams2 = params.instrument+params.sellSymbol
        int token1 = ContractTable.findByInstrumentNameAndName(params.instrument, params.buySymbol).token
        println('this is the token 1' + token1)
        int token2 = ContractTable.findByInstrumentNameAndName(params.instrument,params.sellSymbol).token
        println('this is the token 2' + token2)
        def existingStrategy = StrategyTable.findByToken1AndToken2AndPrice_diff1(token1, token2, Float.parseFloat(params.priceDiff))
        println('if strategy exist '+ existingStrategy)
        if(existingStrategy){

        }
        else{
            println('saving new strategy')
           def newStrategy = new StrategyTable()
            newStrategy.token1 = token1
            newStrategy.token2 =token2
            def priceDiff = Float.parseFloat(params.priceDiff)*100
            newStrategy.price_diff1 = priceDiff
            newStrategy.save(flush: true, failOnError: true)
            println("new strategy saved")
            def modStrategy = new ModStrategyTable()
            modStrategy.order_qty= Integer.parseInt(params.orderQty)
            modStrategy.total_qty= Integer.parseInt(params.totalQty)
            modStrategy.strategy_id= newStrategy.strategy_id
            modStrategy.status= -1
            modStrategy.user_id= springSecurityService.currentUser.id
            println("this is the id of current user "+ springSecurityService.currentUser.id)
            modStrategy.save(flush: true, failOnError: true)
            println('new mod strategy saved')
            redirect(action: 'calenderSpread', params:[parameters:params])
        }
    }


    def saveButterfly ={
        println("hello kuldeep")
        println("these are the params "+ params)
        def expiry = params.expiry
        def date = new Date (expiry)
        def myEpoch = (date.getTime()/1000.0)-315532800;
        println("first "+myEpoch.getClass())
        myEpoch= myEpoch.toBigInteger()
        println("first "+myEpoch.getClass())
//        myEpoch= Integer.parseInt(myEpoch)-
//        println(myEpoch)
         def  token1 = ContractTable.executeQuery("select a.token from ContractTable a where a.instrumentName=:instrument and a.symbol=:symbol and a.optionType= :callPut and a.expiryDate= :expiry and a.strikePrice =:strike",[instrument:params.instrument, symbol:params.symbol, callPut:params.callPut,expiry:myEpoch,strike: (Integer.parseInt(params.strike1)*100).toString()])
         def  token2 = ContractTable.executeQuery("select a.token from ContractTable a where a.instrumentName=:instrument and a.symbol=:symbol and a.optionType= :callPut and a.expiryDate= :expiry and a.strikePrice =:strike",[instrument:params.instrument, symbol:params.symbol, callPut:params.callPut,expiry:myEpoch,strike: (Integer.parseInt(params.strike2)*100).toString()])
         def  token3 = ContractTable.executeQuery("select a.token from ContractTable a where a.instrumentName=:instrument and a.symbol=:symbol and a.optionType= :callPut and a.expiryDate= :expiry and a.strikePrice =:strike",[instrument:params.instrument, symbol:params.symbol, callPut:params.callPut,expiry:myEpoch,strike: (Integer.parseInt(params.strike3)*100).toString()])

        println(token1)
        println(token2)
        println(token3)
        def existingStrategy = StrategyTable.findByToken1AndToken2AndToken3AndPrice_diff1(token1[0], token2[0],token1[0], Float.parseFloat(params.priceDiff))
        println('if strategy exist '+ existingStrategy)
        if(existingStrategy){

        }
        else{
            println('saving new strategy')
            def newStrategy = new StrategyTable()
            newStrategy.token1 = token1[0]
            newStrategy.token2 =token2[0]
            newStrategy.token3 =token3[0]
            newStrategy.buy_sell= Integer.parseInt(params.buySell)
            def priceDiff = Float.parseFloat(params.priceDiff)*100
            newStrategy.price_diff1 = priceDiff
            newStrategy.save(flush: true, failOnError: true)
            println("new strategy saved")
            def modStrategy = new ModStrategyTable()
            modStrategy.order_qty= Integer.parseInt(params.orderQty)
            modStrategy.total_qty= Integer.parseInt(params.totalQty)
            modStrategy.strategy_id= newStrategy.strategy_id
            modStrategy.status= -1
            modStrategy.user_id= springSecurityService.currentUser.id
            println("this is the id of current user "+ springSecurityService.currentUser.id)
            modStrategy.save(flush: true, failOnError: true)
            println('new mod strategy saved')
            redirect(action: 'butterfly', params:[parameters:params])
        }
    }


}

//RD791113