package myproject

import grails.converters.JSON
import grails.plugins.springsecurity.Secured

class FetchDataController {
    def springSecurityService
    def index() {
        println('fetching data')
    }
    def fetchSymbolExpiry = {
        println("called")
        def returnMap = [:]
//        returnMap.symbols = ContractTable.executeQuery("Select distinct a.expiryDate from ContractTable  a where a.symbol= :symbol order by a.expiryDate",[symbol:params.symbol])
        def abc = ContractTable.createCriteria()
        returnMap.symbols = abc.list {
           eq('symbol', params.symbol)
            projections {
                distinct("expiryDate")
            }
            order 'expiryDate'
        }
        println(returnMap.symbols)
        render returnMap as JSON
    }

    def fetchSymbol = {
        def returnMap = [:]
        returnMap.symbols = ContractTable.executeQuery("Select distinct a.symbol from ContractTable  a where a.instrumentName= :instrument",[instrument:params.instrument])
        render returnMap as JSON
    }

   def fetchOptions ={
       def returnMap = [:]
       returnMap.options = ContractTable.executeQuery("Select distinct a.optionType from ContractTable  a where a.instrumentName= :instrument and a.symbol= :symbol",[instrument:params.instrument, symbol:params.symbol])
       render returnMap as JSON
   }

   def fetchExpiry ={
       def returnMap = [:]
       returnMap.expiry = ContractTable.executeQuery("Select distinct a.expiryDate from ContractTable  a where a.instrumentName= :instrument and a.symbol= :symbol and a.optionType= :option",[instrument:params.instrument, symbol:params.symbol, option:params.callPut])
       render returnMap as JSON
   }

    def fetchExpiryDate={
        def returnMap = [:]
        returnMap.expiry = ContractTable.executeQuery("Select distinct a.expiryDate from ContractTable  a where a.instrumentName= :instrument and a.symbol= :symbol",[instrument:params.instrument, symbol:params.symbol])
        render returnMap as JSON
    }

   def fetchStrike ={
       def returnMap = [:]
       returnMap.strike = ContractTable.executeQuery("Select distinct a.strikePrice from ContractTable  a where a.instrumentName= :instrument and a.symbol= :symbol and a.optionType= :option and a.expiryDate= :expiry",[instrument:params.instrument, symbol:params.symbol, option:params.callPut, expiry:BigInteger.valueOf(Long.parseLong(params.expiryDate))])
       render returnMap as JSON
   }

    def fetchStrike1 = {
        def returnMap = [:]
        returnMap.strike = ContractTable.executeQuery("Select distinct a.strikePrice from ContractTable  a where a.instrumentName= :instrument and a.symbol= :symbol and a.expiryDate= :expiry",[instrument:params.instrument, symbol:params.symbol, expiry:BigInteger.valueOf(Long.parseLong(params.expiryDate))])
        render returnMap as JSON
    }

    def fetchUserStrategy = {
        println('hello kuldeep')
        def returnMap = [:]
        int userId = springSecurityService.currentUser.id
        returnMap.userStrategyList = UserInputTable.findAllByStatusPositiveNotEqualAndUserId(5, userId)
        println('hello')
        render returnMap as JSON
    }

}
