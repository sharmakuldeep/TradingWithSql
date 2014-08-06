package myproject

class TryController {
      def mongo
    def index() {
        println('hello kuldeep')
        def abc = ContractTable.createCriteria()
        def results = abc.list {
            'in'("instrumentName",['FUTIDX', 'FUTSTK'])
        }.symbol
        println(results)


}

    def save(){
        println('these are the parameters '+params)
        def calenderIns = new CalenderSpread()
//        calenderIns.id= Integer.parseInt(params.id)
        calenderIns.buySymbol = params.buysymbol
        calenderIns.sellSymbol = params.sellsymbol
        calenderIns.instrument = params.instrument
        calenderIns.priceDiff = 1
        calenderIns.totalQty = 1
        calenderIns.orderQty =1
        calenderIns.modAdd = 'Hello'
        calenderIns.save(failOnError: true)
        render 'saved successfully'


    }
}
