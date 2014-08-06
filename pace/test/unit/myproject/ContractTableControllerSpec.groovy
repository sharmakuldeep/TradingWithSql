package myproject



import grails.test.mixin.*
import spock.lang.*

@TestFor(ContractTableController)
@Mock(ContractTable)
class ContractTableControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.contractTableInstanceList
            model.contractTableInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.contractTableInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def contractTable = new ContractTable()
            contractTable.validate()
            controller.save(contractTable)

        then:"The create view is rendered again with the correct model"
            model.contractTableInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            contractTable = new ContractTable(params)

            controller.save(contractTable)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/contractTable/show/1'
            controller.flash.message != null
            ContractTable.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def contractTable = new ContractTable(params)
            controller.show(contractTable)

        then:"A model is populated containing the domain instance"
            model.contractTableInstance == contractTable
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def contractTable = new ContractTable(params)
            controller.edit(contractTable)

        then:"A model is populated containing the domain instance"
            model.contractTableInstance == contractTable
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/contractTable/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def contractTable = new ContractTable()
            contractTable.validate()
            controller.update(contractTable)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.contractTableInstance == contractTable

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            contractTable = new ContractTable(params).save(flush: true)
            controller.update(contractTable)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/contractTable/show/$contractTable.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/contractTable/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def contractTable = new ContractTable(params).save(flush: true)

        then:"It exists"
            ContractTable.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(contractTable)

        then:"The instance is deleted"
            ContractTable.count() == 0
            response.redirectedUrl == '/contractTable/index'
            flash.message != null
    }
}
