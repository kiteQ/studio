package de.nextcommerce.core

import org.springframework.dao.DataIntegrityViolationException

class ConfiguratorController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [configuratorInstanceList: Configurator.list(params), configuratorInstanceTotal: Configurator.count()]
    }

    def create() {
        [configuratorInstance: new Configurator(params)]
    }

    def save() {
        def configuratorInstance = new Configurator(params)
        if (!configuratorInstance.save(flush: true)) {
            render(view: "create", model: [configuratorInstance: configuratorInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'configurator.label', default: 'Configurator'), configuratorInstance.id])
        redirect(action: "show", id: configuratorInstance.id)
    }

    def show(Long id) {
        def configuratorInstance = Configurator.get(id)
        if (!configuratorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'configurator.label', default: 'Configurator'), id])
            redirect(action: "list")
            return
        }

        [configuratorInstance: configuratorInstance]
    }

    def edit(Long id) {
        def configuratorInstance = Configurator.get(id)
        if (!configuratorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'configurator.label', default: 'Configurator'), id])
            redirect(action: "list")
            return
        }

        [configuratorInstance: configuratorInstance]
    }

    def update(Long id, Long version) {
        def configuratorInstance = Configurator.get(id)
        if (!configuratorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'configurator.label', default: 'Configurator'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (configuratorInstance.version > version) {
                configuratorInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'configurator.label', default: 'Configurator')] as Object[],
                          "Another user has updated this Configurator while you were editing")
                render(view: "edit", model: [configuratorInstance: configuratorInstance])
                return
            }
        }

        configuratorInstance.properties = params

        if (!configuratorInstance.save(flush: true)) {
            render(view: "edit", model: [configuratorInstance: configuratorInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'configurator.label', default: 'Configurator'), configuratorInstance.id])
        redirect(action: "show", id: configuratorInstance.id)
    }

    def delete(Long id) {
        def configuratorInstance = Configurator.get(id)
        if (!configuratorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'configurator.label', default: 'Configurator'), id])
            redirect(action: "list")
            return
        }

        try {
            configuratorInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'configurator.label', default: 'Configurator'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'configurator.label', default: 'Configurator'), id])
            redirect(action: "show", id: id)
        }
    }
}
