package myproject

class Sequence {

     String name
     int sequence
    static constraints = {
    }

   def static getNextSequence(name) {
       println('finding sequence for the name '+ name)
       def abc = Sequence.findByName(name)
       println('if found '+ abc)
           if(abc){
              println('in if')
               abc.sequence = abc.sequence +1
               abc.save(failOnError: true)
               println('saved')
              return abc.sequence
           }

          else{
               println('in else')
               abc = new Sequence()
               println('in else')
               abc.name= name
               println('in else')
               abc.sequence=1
               println('in else')
               abc.save( failOnError: true)
               println('new sequence saved')
               return abc.sequence
           }
    }
}
