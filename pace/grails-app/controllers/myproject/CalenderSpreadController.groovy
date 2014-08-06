package myproject



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CalenderSpreadController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CalenderSpread.list(params), model:[calenderSpreadInstanceCount: CalenderSpread.count()]
    }

    def show(CalenderSpread calenderSpreadInstance) {
        respond calenderSpreadInstance
    }

    def create() {
        respond new CalenderSpread(params)
    }

    @Transactional
    def save(CalenderSpread calenderSpreadInstance) {
        if (calenderSpreadInstance == null) {
            notFound()
            return
        }
        println("saving")
        if (calenderSpreadInstance.hasErrors()) {
            respond calenderSpreadInstance.errors, view:'create'
            return
        }
        println("saving")
        calenderSpreadInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'calenderSpreadInstance.label', default: 'CalenderSpread'), calenderSpreadInstance.id])
                redirect calenderSpreadInstance
            }
            '*' { respond calenderSpreadInstance, [status: CREATED] }
        }
    }

    def edit(CalenderSpread calenderSpreadInstance) {
        respond calenderSpreadInstance
    }

    @Transactional
    def update(CalenderSpread calenderSpreadInstance) {
        if (calenderSpreadInstance == null) {
            notFound()
            return
        }

        if (calenderSpreadInstance.hasErrors()) {
            respond calenderSpreadInstance.errors, view:'edit'
            return
        }

        calenderSpreadInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CalenderSpread.label', default: 'CalenderSpread'), calenderSpreadInstance.id])
                redirect calenderSpreadInstance
            }
            '*'{ respond calenderSpreadInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CalenderSpread calenderSpreadInstance) {

        if (calenderSpreadInstance == null) {
            notFound()
            return
        }

        calenderSpreadInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CalenderSpread.label', default: 'CalenderSpread'), calenderSpreadInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'calenderSpreadInstance.label', default: 'CalenderSpread'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
