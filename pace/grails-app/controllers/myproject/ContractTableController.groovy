package myproject



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ContractTableController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ContractTable.list(params), model: [contractTableInstanceCount: ContractTable.count()]
    }


    def show(ContractTable contractTableInstance) {
        respond contractTableInstance
    }

    def create() {
        respond new ContractTable(params)
    }

    @Transactional
    def save(ContractTable contractTableInstance) {
        if (contractTableInstance == null) {
            notFound()
            return
        }

        if (contractTableInstance.hasErrors()) {
            respond contractTableInstance.errors, view: 'create'
            return
        }

        contractTableInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'contractTableInstance.label', default: 'ContractTable'), contractTableInstance.id])
                redirect contractTableInstance
            }
            '*' { respond contractTableInstance, [status: CREATED] }
        }
    }

    def edit(ContractTable contractTableInstance) {
        respond contractTableInstance
    }

    @Transactional
    def update(ContractTable contractTableInstance) {
        if (contractTableInstance == null) {
            notFound()
            return
        }

        if (contractTableInstance.hasErrors()) {
            respond contractTableInstance.errors, view: 'edit'
            return
        }

        contractTableInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ContractTable.label', default: 'ContractTable'), contractTableInstance.id])
                redirect contractTableInstance
            }
            '*' { respond contractTableInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ContractTable contractTableInstance) {

        if (contractTableInstance == null) {
            notFound()
            return
        }

        contractTableInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ContractTable.label', default: 'ContractTable'), contractTableInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'contractTableInstance.label', default: 'ContractTable'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
