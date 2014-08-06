    package myproject

    import grails.converters.JSON
    import grails.plugins.springsecurity.Secured
    @Secured("ROLE_ADMIN")
    public class Status {
        public static final int INACTIVE = 0;
        public static final int STARTINPROCESS = 1;
        public static final int STOPINPROCESS = 2;
        public static final int STARTED = 3;
        public static final int STOPPED = 4;
        public static final int DELETED = 5;
    }
    class HomeController {
        def springSecurityService
         Status status = new Status()

        @Secured("ROLE_ADMIN")
        def index() {
            def calenderSpreadSymbol = ContractTable.executeQuery("Select distinct a.symbol from ContractTable  a where a.instrumentName in ('FUTIDX', 'FUTSTK') order by a.symbol")
            println('this is the list '+ calenderSpreadSymbol.size())
            [calenderSpreadSymbol:calenderSpreadSymbol]
        }


        def saveUserInput= {
            println("these are the parameters "+ params)
            println('enum val '+ status.INACTIVE)
            def returnMap=[:]
            def token1 = ContractTable.executeQuery(" Select a.token from ContractTable a where a.instrumentName in ('FUTIDX', 'FUTSTK') and a.symbol=:symbol and a.expiryDate=:expiry",[symbol:params.calenderSpreadSymbol, expiry:Integer.parseInt(params.buyExpiryEpoch).toBigInteger()])
            def token2 = ContractTable.executeQuery(" Select a.token from ContractTable a where a.instrumentName in ('FUTIDX', 'FUTSTK') and a.symbol=:symbol and a.expiryDate=:expiry",[symbol:params.calenderSpreadSymbol, expiry:Integer.parseInt(params.sellExpiryEpoch).toBigInteger()])
            def userInput = new UserInputTable();
            userInput.userId=springSecurityService.currentUser.id
            userInput.token1= token1[0]
            userInput.token2=token2[0]
            def strategy
            if(params.userStrategy=='calenderSpread')
                 strategy ='CS'
            else if(params.userStrategy=='butterfly')
                strategy ='BFLY'
            else if(params.userStrategy=='synthetic')
                strategy ='STIC'
            userInput.strategyType= strategy
            userInput.symbol= params.calenderSpreadSymbol
            userInput.feature1=params.buyExpiryConversion
            userInput.feature2=params.sellExpiryConversion
            userInput.statusPositive= status.INACTIVE
            userInput.statusNegative= status.INACTIVE
            if(userInput.save(flush: true, failOnError: true)){
                returnMap.saved=1
            }
            render returnMap as JSON
        }


        def saveUserStrategyInputs = {
            println("----------------"+status.INACTIVE)
            def saveMap =[:]
            println("these are the parameters "+ params)
            def inputs =JSON.parse(params.userInput);
            UserInputTable userInputTableIns = UserInputTable.findByUserStrategyId(Integer.parseInt(params.strategyId))
            if(checkExistingValue(Integer.parseInt(inputs[0]), Integer.parseInt(inputs[1]),(int) Float.parseFloat(inputs[2])*100, 0, userInputTableIns)){
                println("in positive")
                if(Integer.parseInt(inputs[1])!=0 && params.statusPositive==(''+status.INACTIVE)){
                        println('switch if total lot')
                        userInputTableIns.orderLot1=Integer.parseInt(inputs[0])
                        userInputTableIns.totalLot1=Integer.parseInt(inputs[1])
                        userInputTableIns.priceDiff1=Float.parseFloat(inputs[2])*100
                        userInputTableIns.statusPositive= status.STARTINPROCESS
                        def existingStrategy = StrategyTable.findByToken1AndToken2AndPrice_diff1(userInputTableIns.token1, userInputTableIns.token2, userInputTableIns.priceDiff1)
                        println('if strategy exist '+ existingStrategy)
                        if(!existingStrategy){
                            println('saving new strategy')
                            existingStrategy = new StrategyTable()
                            existingStrategy.token1 = userInputTableIns.token1
                            existingStrategy.token2 =userInputTableIns.token2
                            existingStrategy.price_diff1 =  userInputTableIns.priceDiff1
                            existingStrategy.save(flush: true, failOnError: true)
                            println("new strategy saved")
                        }
                        userInputTableIns.strategyIdPositive =  existingStrategy.strategy_id
                        def modStrategy = new ModStrategyTable()
                        modStrategy.order_qty= userInputTableIns.orderLot1
                        modStrategy.total_qty=userInputTableIns.totalLot1 -userInputTableIns.modQuantity1
                        modStrategy.strategy_id= existingStrategy.strategy_id
                        modStrategy.status= -1
                        modStrategy.user_id= springSecurityService.currentUser.id
                        println("this is the id of current user "+ springSecurityService.currentUser.id)
                        modStrategy.save(flush: true, failOnError: true)
                        println('new mod strategy saved')
        //            redirect(action: 'calenderSpread', params:[parameters:params])
                        saveMap.sucess='saved'
                        render saveMap as JSON
                    }
                else if(params.status== status.STARTINPROCESS){

                        println("last action in progress")
                    }

                if(Integer.parseInt(inputs[1])!=0 && params.statusPositive==(''+status.STARTED)){
                        userInputTableIns.orderLot1=Integer.parseInt(inputs[0])
                        userInputTableIns.totalLot1=Integer.parseInt(inputs[1])
                        userInputTableIns.priceDiff1=Float.parseFloat(inputs[2])*100
                        userInputTableIns.modQuantity1+=userInputTableIns.tradedLot1
                        userInputTableIns.tradedLot1=0
                        userInputTableIns.statusPositive= status.STARTINPROCESS

                        def existingStrategy = StrategyTable.findByToken1AndToken2AndPrice_diff1(userInputTableIns.token1, userInputTableIns.token2, userInputTableIns.priceDiff1)
                        println('if strategy exist '+ existingStrategy)
                        if(!existingStrategy){
                            println('saving new strategy')
                            existingStrategy = new StrategyTable()
                            existingStrategy.token1 = userInputTableIns.token1
                            existingStrategy.token2 =userInputTableIns.token2
                            existingStrategy.price_diff1 =  userInputTableIns.priceDiff1
                            existingStrategy.save(flush: true, failOnError: true)
                            println("new strategy saved")

                        }
                        userInputTableIns.strategyIdPositive =  existingStrategy.strategy_id
                        def modStrategy = new ModStrategyTable()
                        modStrategy.order_qty= userInputTableIns.orderLot1
                        modStrategy.total_qty=userInputTableIns.totalLot1- userInputTableIns.modQuantity1
                        modStrategy.strategy_id= existingStrategy.strategy_id
                        modStrategy.status= -1
                        modStrategy.user_id= springSecurityService.currentUser.id
                        println("this is the id of current user "+ springSecurityService.currentUser.id)
                        modStrategy.save(flush: true, failOnError: true)
                        println('new mod strategy saved')
        //            redirect(action: 'calenderSpread', params:[parameters:params])
                        saveMap.sucess='saved'
                        render saveMap as JSON
                    }
                else if(params.status== status.STARTINPROCESS){

                        println("last action in progress")
                    }

                if(Integer.parseInt(inputs[1])!=0 && params.statusPositive==(''+status.STOPPED)){
                        userInputTableIns.orderLot1=Integer.parseInt(inputs[0])
                        userInputTableIns.totalLot1=Integer.parseInt(inputs[1])
                        userInputTableIns.priceDiff1=Float.parseFloat(inputs[2])*100
                        userInputTableIns.modQuantity1+=userInputTableIns.tradedLot1
                        userInputTableIns.tradedLot1=0
                        userInputTableIns.statusPositive= status.STARTINPROCESS

                        def existingStrategy = StrategyTable.findByToken1AndToken2AndPrice_diff1(userInputTableIns.token1, userInputTableIns.token2, userInputTableIns.priceDiff1)
                        println('if strategy exist '+ existingStrategy)
                        if(!existingStrategy){
                            println('saving new strategy')
                            existingStrategy = new StrategyTable()
                            existingStrategy.token1 = userInputTableIns.token1
                            existingStrategy.token2 =userInputTableIns.token2
                            existingStrategy.price_diff1 =  userInputTableIns.priceDiff1
                            existingStrategy.save(flush: true, failOnError: true)
                            println("new strategy saved")

                        }
                        userInputTableIns.strategyIdPositive =  existingStrategy.strategy_id
                        def modStrategy = new ModStrategyTable()
                        modStrategy.order_qty= userInputTableIns.orderLot1
                        modStrategy.total_qty=userInputTableIns.totalLot1  -userInputTableIns.modQuantity1
                        modStrategy.strategy_id= existingStrategy.strategy_id
                        modStrategy.status= -1
                        modStrategy.user_id= springSecurityService.currentUser.id
                        println("this is the id of current user "+ springSecurityService.currentUser.id)
                        modStrategy.save(flush: true, failOnError: true)
                        println('new mod strategy saved')
        //            redirect(action: 'calenderSpread', params:[parameters:params])
                        saveMap.sucess='saved'
                        render saveMap as JSON
                    }
                else if(params.status== status.STARTINPROCESS){

                        println("last action in progress")
                    }
            }

            else{
                saveMap.exist ='Strategy Exists'
            }







             if(checkExistingValue(Integer.parseInt(inputs[3]), Integer.parseInt(inputs[4]), (int)Float.parseFloat(inputs[5])*100, 1, userInputTableIns)){
                 println("in Nagetive")
              if(Integer.parseInt(inputs[4])!=0 && params.statusNegative==(''+status.INACTIVE)){
                   println("working vivek")
                    userInputTableIns.orderLot2=Integer.parseInt(inputs[3])
                    userInputTableIns.totalLot2=Integer.parseInt(inputs[4])
                    userInputTableIns.priceDiff2=Float.parseFloat(inputs[5])*100
                    userInputTableIns.statusNegative= status.STARTINPROCESS

                    def existingStrategy = StrategyTable.findByToken1AndToken2AndPrice_diff1(userInputTableIns.token1, userInputTableIns.token2, userInputTableIns.priceDiff2)
                    println('if strategy exist '+ existingStrategy)
                    if(!existingStrategy){
                        println('saving new strategy')
                        existingStrategy = new StrategyTable()
                        existingStrategy.token1 = userInputTableIns.token1
                        existingStrategy.token2 =userInputTableIns.token2
                        existingStrategy.price_diff1 =  userInputTableIns.priceDiff2
                        existingStrategy.save(flush: true, failOnError: true)
                        println("new strategy saved")

                    }
                  userInputTableIns.strategyIdNegative =  existingStrategy.strategy_id
                    def modStrategy = new ModStrategyTable()
                    modStrategy.order_qty= userInputTableIns.orderLot2
                    modStrategy.total_qty=userInputTableIns.totalLot2  -userInputTableIns.modQuantity2
                    modStrategy.strategy_id= existingStrategy.strategy_id
                    modStrategy.status= -1
                    modStrategy.user_id= springSecurityService.currentUser.id
                    println("this is the id of current user "+ springSecurityService.currentUser.id)
                    modStrategy.save(flush: true, failOnError: true)
                    println('new mod strategy saved')
    //            redirect(action: 'calenderSpread', params:[parameters:params])
                    saveMap.sucess='saved'
                    render saveMap as JSON
                }

                else if(params.status== status.STARTINPROCESS){

                    println("last action in progress")
                }
                 println(Integer.parseInt(inputs[4])+'----------'+params.statusNegative)
               if(Integer.parseInt(inputs[4])!=0 && params.statusNegative==(''+status.STARTED)){
                   userInputTableIns.orderLot2=Integer.parseInt(inputs[3])
                   userInputTableIns.totalLot2=Integer.parseInt(inputs[4])
                   userInputTableIns.priceDiff2=Float.parseFloat(inputs[5])*100
                   userInputTableIns.modQuantity2+=userInputTableIns.tradedLot2
                   userInputTableIns.tradedLot2=0
                   userInputTableIns.statusNegative= status.STARTINPROCESS

                    def existingStrategy = StrategyTable.findByToken1AndToken2AndPrice_diff1(userInputTableIns.token1, userInputTableIns.token2, userInputTableIns.priceDiff2)
                    println('if strategy exist '+ existingStrategy)
                    if(!existingStrategy){
                        println('saving new strategy')
                        existingStrategy = new StrategyTable()
                        existingStrategy.token1 = userInputTableIns.token1
                        existingStrategy.token2 =userInputTableIns.token2
                        existingStrategy.price_diff1 =  userInputTableIns.priceDiff2
                        existingStrategy.save(flush: true, failOnError: true)
                        println("new strategy saved")

                    }
                   userInputTableIns.strategyIdNegative =  existingStrategy.strategy_id
                    def modStrategy = new ModStrategyTable()
                    modStrategy.order_qty= userInputTableIns.orderLot2
                    modStrategy.total_qty=userInputTableIns.totalLot2  -userInputTableIns.modQuantity2
                    modStrategy.strategy_id= existingStrategy.strategy_id
                    modStrategy.status= -1
                    modStrategy.user_id= springSecurityService.currentUser.id
                    println("this is the id of current user "+ springSecurityService.currentUser.id)
                    modStrategy.save(flush: true, failOnError: true)
                    println('new mod strategy saved')
    //            redirect(action: 'calenderSpread', params:[parameters:params])
                }

                else if(params.status== status.STARTINPROCESS){

                    println("last action in progress")
                }

                 if(Integer.parseInt(inputs[4])!=0 && params.statusNegative==(''+status.STOPPED)){
                     userInputTableIns.orderLot2=Integer.parseInt(inputs[3])
                     userInputTableIns.totalLot2=Integer.parseInt(inputs[4])
                     userInputTableIns.priceDiff2=Float.parseFloat(inputs[5])*100
                     userInputTableIns.modQuantity2+=userInputTableIns.tradedLot2
                     userInputTableIns.tradedLot2=0
                     userInputTableIns.statusNegative= status.STARTINPROCESS

                    def existingStrategy = StrategyTable.findByToken1AndToken2AndPrice_diff1(userInputTableIns.token1, userInputTableIns.token2, userInputTableIns.priceDiff2)
                    println('if strategy exist '+ existingStrategy)
                    if(!existingStrategy){
                        println('saving new strategy')
                        existingStrategy = new StrategyTable()
                        existingStrategy.token1 = userInputTableIns.token1
                        existingStrategy.token2 =userInputTableIns.token2
                        existingStrategy.price_diff1 =  userInputTableIns.priceDiff2
                        existingStrategy.save(flush: true, failOnError: true)
                        println("new strategy saved")

                    }
                    userInputTableIns.strategyIdNegative =  existingStrategy.strategy_id
                    def modStrategy = new ModStrategyTable()
                    modStrategy.order_qty= userInputTableIns.orderLot2
                    modStrategy.total_qty=userInputTableIns.totalLot2  -userInputTableIns.modQuantity2
                    modStrategy.strategy_id= existingStrategy.strategy_id
                    modStrategy.status= -1
                    modStrategy.user_id= springSecurityService.currentUser.id
                    println("this is the id of current user "+ springSecurityService.currentUser.id)
                    modStrategy.save(flush: true, failOnError: true)
                    println('new mod strategy saved')
    //            redirect(action: 'calenderSpread', params:[parameters:params])
                    saveMap.sucess='saved'
                    render saveMap as JSON
                }

                else if(params.status== status.STARTINPROCESS){

                    println("last action in progress")
                }
             }



            else{
                 saveMap.exist ='Strategy Exists'
             }
          println('now going to save the table')
          userInputTableIns.save(flush: true, failOnError: true)
            saveMap.sucess='saved'
            render saveMap as JSON

    //        if((params.statusPositive=='INACTIVE' || params.statusPositive=='STARTED' || params.statusPositive=='STOPPED')&&(Integer.parseInt(params.totalLot1)!=0)){
    //            userInputTableIns.orderLot1=Integer.parseInt(inputs[0])
    //            userInputTableIns.totalLot1=Integer.parseInt(inputs[1])
    //            userInputTableIns.priceDiff1=Integer.parseInt(inputs[2])*100
    //            userInputTableIns.statusPositive= status.STARTINPROCESS
    //
    //            def existingStrategy = StrategyTable.findByToken1AndToken2AndPrice_diff1(userInputTableIns.token1, userInputTableIns.token2, userInputTableIns.priceDiff1)
    //            println('if strategy exist '+ existingStrategy)
    //            if(!existingStrategy){
    //                println('saving new strategy')
    //                existingStrategy = new StrategyTable()
    //                existingStrategy.token1 = userInputTableIns.token1
    //                existingStrategy.token2 =userInputTableIns.token2
    //                existingStrategy.price_diff1 =  userInputTableIns.priceDiff1
    //                existingStrategy.save(flush: true, failOnError: true)
    //                println("new strategy saved")
    //
    //            }
    //             def modStrategy = new ModStrategyTable()
    //             modStrategy.order_qty= userInputTableIns.orderLot1
    //             modStrategy.total_qty=userInputTableIns.totalLot1
    //             modStrategy.strategy_id= existingStrategy.strategy_id
    //             modStrategy.status= -1
    //             modStrategy.user_id= springSecurityService.currentUser.id
    //             println("this is the id of current user "+ springSecurityService.currentUser.id)
    //             modStrategy.save(flush: true, failOnError: true)
    //             println('new mod strategy saved')
    ////            redirect(action: 'calenderSpread', params:[parameters:params])
    //             saveMap.sucess='saved'
    //            render saveMap as JSON
    //        }
    //
    //        else if(params.status== status.STARTINPROCESS){
    //
    //            println("last action in progress")
    //        }
    //        if(params.statusNegative=='INACTIVE' || params.statusNegative=='STARTED' || params.statusNegative=='STOPPED'){
    //
    //            userInputTableIns.orderLot2=Integer.parseInt(inputs[3])
    //            userInputTableIns.totalLot2=Integer.parseInt(inputs[4])
    //            userInputTableIns.priceDiff2=Integer.parseInt(inputs[5])*100
    //            userInputTableIns.statusNegative= status.STARTINPROCESS
    //
    //            def existingStrategy = StrategyTable.findByToken1AndToken2AndPrice_diff1(userInputTableIns.token1, userInputTableIns.token2, userInputTableIns.priceDiff1)
    //            println('if strategy exist '+ existingStrategy)
    //            if(!existingStrategy){
    //                println('saving new strategy')
    //                existingStrategy = new StrategyTable()
    //                existingStrategy.token1 = userInputTableIns.token1
    //                existingStrategy.token2 =userInputTableIns.token2
    //                existingStrategy.price_diff1 =  userInputTableIns.priceDiff2
    //                existingStrategy.save(flush: true, failOnError: true)
    //                println("new strategy saved")
    //
    //            }
    //            def modStrategy = new ModStrategyTable()
    //            modStrategy.order_qty= userInputTableIns.orderLot1
    //            modStrategy.total_qty=userInputTableIns.totalLot1
    //            modStrategy.strategy_id= existingStrategy.strategy_id
    //            modStrategy.status= -1
    //            modStrategy.user_id= springSecurityService.currentUser.id
    //            println("this is the id of current user "+ springSecurityService.currentUser.id)
    //            modStrategy.save(flush: true, failOnError: true)
    //            println('new mod strategy saved')
    ////            redirect(action: 'calenderSpread', params:[parameters:params])
    //            saveMap.sucess='saved'
    //            render saveMap as JSON
    //        }
    //
    //        else if(params.status== status.STARTINPROCESS){
    //
    //            println("last action in progress")
    //        }


        }


        boolean  checkExistingValue(int orderLot, int totalLot , int priceDiff, int flag, UserInputTable userInputTableIns){

                  println("called")
//             for positive flag =0
            if((flag==0)&&(userInputTableIns.totalLot1!=totalLot || userInputTableIns.orderLot1!=orderLot || userInputTableIns.priceDiff1!= priceDiff )){
                println(userInputTableIns.totalLot1+'--'+totalLot)
                println(userInputTableIns.orderLot1+'--'+orderLot)
                println(userInputTableIns.priceDiff1+'--'+priceDiff)
                return true
            }
//            //for nagetive flag = any non zero value
            else if((1==flag)&&(userInputTableIns.totalLot2!=totalLot || userInputTableIns.orderLot2!=orderLot || userInputTableIns.priceDiff2!= priceDiff )){
                println(userInputTableIns.totalLot2+'--'+totalLot)
                println(userInputTableIns.orderLot2+'--'+orderLot)
                println(userInputTableIns.priceDiff2+'--'+priceDiff)
                return true
            }

            return false;
        }



        def stopUserStrategyInputs(){
            println("there are the parameters "+ params)
            def returnMap =[:]
            def stopStringList = JSON.parse(params.stopArray)
            def stopList=[]
            stopStringList.each{
              stopList.add(Integer.parseInt(it))
            }
            def userInputStopList = UserInputTable.findAllByUserStrategyIdInList(stopList)
            println('le ye rhi list '+userInputStopList)
            userInputStopList.each{
                UserInputTable  userInputTableIns = UserInputTable.findByUserStrategyId(it.userStrategyId)
                if( userInputTableIns.statusPositive==(status.STARTED)){
                    userInputTableIns.statusPositive= status.STOPPED
                    def existingStrategy = StrategyTable.findByToken1AndToken2AndPrice_diff1(userInputTableIns.token1, userInputTableIns.token2, userInputTableIns.priceDiff1)
                    println('if strategy exist '+ existingStrategy)
                    if(existingStrategy){
                        def modStrategy = new ModStrategyTable()
                        modStrategy.order_qty= userInputTableIns.orderLot1
                        modStrategy.total_qty=userInputTableIns.tradedLot1+userInputTableIns.modQuantity1
                        modStrategy.strategy_id= existingStrategy.strategy_id
                        modStrategy.status= -1
                        modStrategy.user_id= springSecurityService.currentUser.id
                        println("this is the id of current user "+ springSecurityService.currentUser.id)
                        modStrategy.save(flush: true, failOnError: true)
                        println('new mod strategy saved')
                        //            redirect(action: 'calenderSpread', params:[parameters:params])
                    }
                }
                if( userInputTableIns.statusNegative==(status.STARTED)){
                    userInputTableIns.statusNegative= status.STOPPED
                    def existingStrategy = StrategyTable.findByToken1AndToken2AndPrice_diff1(userInputTableIns.token1, userInputTableIns.token2, userInputTableIns.priceDiff2)
                    println('if strategy exist '+ existingStrategy)
                    if(existingStrategy){
                        def modStrategy = new ModStrategyTable()
                        modStrategy.order_qty= userInputTableIns.orderLot2
                        modStrategy.total_qty=userInputTableIns.tradedLot2+userInputTableIns.modQuantity2
                        modStrategy.strategy_id= existingStrategy.strategy_id
                        modStrategy.status= -1
                        modStrategy.user_id= springSecurityService.currentUser.id
                        println("this is the id of current user "+ springSecurityService.currentUser.id)
                        modStrategy.save(flush: true, failOnError: true)
                        println('new mod strategy saved')
                        //            redirect(action: 'calenderSpread', params:[parameters:params])
                    }

                }
                println('going to save it')
                userInputTableIns.save(flush: true, failOnError: true)
                returnMap.sucess='Done'
                render returnMap as JSON
            }
        }


        def deleteUserStrategyInputs(){
            println("there are the parameters "+ params)
            def returnMap =[:]
            def stopStringList = JSON.parse(params.stopArray)
            def stopList=[]
            stopStringList.each{
                stopList.add(Integer.parseInt(it))
            }
            def userInputStopList = UserInputTable.findAllByUserStrategyIdInList(stopList)
            println('le ye rhi list '+userInputStopList)
            userInputStopList.each{
                UserInputTable  userInputTableIns = UserInputTable.findByUserStrategyId(it.userStrategyId)
                if( userInputTableIns.statusPositive==(status.STOPPED)){
                    userInputTableIns.statusPositive= status.DELETED
                }
                if( userInputTableIns.statusNegative==(status.STOPPED)){
                    userInputTableIns.statusNegative= status.DELETED

                }
                println('going to save it')
                userInputTableIns.save(flush: true, failOnError: true)
                returnMap.sucess='Done'
                render returnMap as JSON
            }

        }
    }
