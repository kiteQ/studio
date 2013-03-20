package de.nextcommerce.core

import org.springframework.dao.DataIntegrityViolationException

class CustomerFieldsTemplateController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	
	
    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [customerFieldsTemplateInstanceList: CustomerFieldsTemplate.list(params), customerFieldsTemplateInstanceTotal: CustomerFieldsTemplate.count()]
    }

    def create() {
        [customerFieldsTemplateInstance: new CustomerFieldsTemplate(params)]
    }

    def save() {
        def customerFieldsTemplateInstance = new CustomerFieldsTemplate(params)
        if (!customerFieldsTemplateInstance.save(flush: true)) {
            render(view: "create", model: [customerFieldsTemplateInstance: customerFieldsTemplateInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'customerFieldsTemplate.label', default: 'CustomerFieldsTemplate'), customerFieldsTemplateInstance.id])
        redirect(action: "show", id: customerFieldsTemplateInstance.id)
    }

    def show(Long id) {
        def customerFieldsTemplateInstance = CustomerFieldsTemplate.get(id)
        if (!customerFieldsTemplateInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerFieldsTemplate.label', default: 'CustomerFieldsTemplate'), id])
            redirect(action: "list")
            return
        }

        [customerFieldsTemplateInstance: customerFieldsTemplateInstance]
    }

    def edit(Long id) {
        def customerFieldsTemplateInstance = CustomerFieldsTemplate.get(id)
        if (!customerFieldsTemplateInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerFieldsTemplate.label', default: 'CustomerFieldsTemplate'), id])
            redirect(action: "list")
            return
        }

        [customerFieldsTemplateInstance: customerFieldsTemplateInstance]
    }

    def update(Long id, Long version) {
        def customerFieldsTemplateInstance = CustomerFieldsTemplate.get(id)
        if (!customerFieldsTemplateInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerFieldsTemplate.label', default: 'CustomerFieldsTemplate'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (customerFieldsTemplateInstance.version > version) {
                customerFieldsTemplateInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'customerFieldsTemplate.label', default: 'CustomerFieldsTemplate')] as Object[],
                          "Another user has updated this CustomerFieldsTemplate while you were editing")
                render(view: "edit", model: [customerFieldsTemplateInstance: customerFieldsTemplateInstance])
                return
            }
        }

        customerFieldsTemplateInstance.properties = params

        if (!customerFieldsTemplateInstance.save(flush: true)) {
            render(view: "edit", model: [customerFieldsTemplateInstance: customerFieldsTemplateInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'customerFieldsTemplate.label', default: 'CustomerFieldsTemplate'), customerFieldsTemplateInstance.id])
        redirect(action: "show", id: customerFieldsTemplateInstance.id)
    }

    def delete(Long id) {
        def customerFieldsTemplateInstance = CustomerFieldsTemplate.get(id)
        if (!customerFieldsTemplateInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerFieldsTemplate.label', default: 'CustomerFieldsTemplate'), id])
            redirect(action: "list")
            return
        }

        try {
            customerFieldsTemplateInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'customerFieldsTemplate.label', default: 'CustomerFieldsTemplate'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'customerFieldsTemplate.label', default: 'CustomerFieldsTemplate'), id])
            redirect(action: "show", id: id)
        }
    }
}
