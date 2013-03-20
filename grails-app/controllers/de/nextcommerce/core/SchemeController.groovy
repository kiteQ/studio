package de.nextcommerce.core

import org.springframework.dao.DataIntegrityViolationException

class SchemeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [schemeInstanceList: Scheme.list(params), schemeInstanceTotal: Scheme.count()]
    }

    def create() {
        [schemeInstance: new Scheme(params)]
    }

    def save() {
        def schemeInstance = new Scheme(params)
        if (!schemeInstance.save(flush: true)) {
            render(view: "create", model: [schemeInstance: schemeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'scheme.label', default: 'Scheme'), schemeInstance.id])
        redirect(action: "show", id: schemeInstance.id)
    }

    def show(Long id) {
        def schemeInstance = Scheme.get(id)
        if (!schemeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'scheme.label', default: 'Scheme'), id])
            redirect(action: "list")
            return
        }

        [schemeInstance: schemeInstance]
    }

    def edit(Long id) {
        def schemeInstance = Scheme.get(id)
        if (!schemeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'scheme.label', default: 'Scheme'), id])
            redirect(action: "list")
            return
        }

        [schemeInstance: schemeInstance]
    }

    def update(Long id, Long version) {
        def schemeInstance = Scheme.get(id)
        if (!schemeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'scheme.label', default: 'Scheme'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (schemeInstance.version > version) {
                schemeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'scheme.label', default: 'Scheme')] as Object[],
                          "Another user has updated this Scheme while you were editing")
                render(view: "edit", model: [schemeInstance: schemeInstance])
                return
            }
        }

        schemeInstance.properties = params

        if (!schemeInstance.save(flush: true)) {
            render(view: "edit", model: [schemeInstance: schemeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'scheme.label', default: 'Scheme'), schemeInstance.id])
        redirect(action: "show", id: schemeInstance.id)
    }

    def delete(Long id) {
        def schemeInstance = Scheme.get(id)
        if (!schemeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'scheme.label', default: 'Scheme'), id])
            redirect(action: "list")
            return
        }

        try {
            schemeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'scheme.label', default: 'Scheme'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'scheme.label', default: 'Scheme'), id])
            redirect(action: "show", id: id)
        }
    }
}
