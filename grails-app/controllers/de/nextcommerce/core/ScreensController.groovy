package de.nextcommerce.core

import grails.converters.JSON

import org.springframework.dao.DataIntegrityViolationException

class ScreensController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [screensInstanceList: Screens.list(params), screensInstanceTotal: Screens.count()]
    }

    def create() {
        [screensInstance: new Screens(params)]
    }

    def save() {
        def screensInstance = new Screens(params)
        if (!screensInstance.save(flush: true)) {
            render(view: "create", model: [screensInstance: screensInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'screens.label', default: 'Screens'), screensInstance.id])
        redirect(action: "show", id: screensInstance.id)
    }

    def show(Long id) {
        def screensInstance = Screens.get(id)
        if (!screensInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'screens.label', default: 'Screens'), id])
            redirect(action: "list")
            return
        }

        [screensInstance: screensInstance]
    }

    def edit(Long id) {
        def screensInstance = Screens.get(id)
        if (!screensInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'screens.label', default: 'Screens'), id])
            redirect(action: "list")
            return
        }

        [screensInstance: screensInstance]
    }

    def update(Long id, Long version) {
        def screensInstance = Screens.get(id)
        if (!screensInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'screens.label', default: 'Screens'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (screensInstance.version > version) {
                screensInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'screens.label', default: 'Screens')] as Object[],
                          "Another user has updated this Screens while you were editing")
                render(view: "edit", model: [screensInstance: screensInstance])
                return
            }
        }

        screensInstance.properties = params

        if (!screensInstance.save(flush: true)) {
            render(view: "edit", model: [screensInstance: screensInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'screens.label', default: 'Screens'), screensInstance.id])
        redirect(action: "show", id: screensInstance.id)
    }

    def delete(Long id) {
        def screensInstance = Screens.get(id)
        if (!screensInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'screens.label', default: 'Screens'), id])
            redirect(action: "list")
            return
        }

        try {
            screensInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'screens.label', default: 'Screens'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'screens.label', default: 'Screens'), id])
            redirect(action: "show", id: id)
        }
    }
	
	def ajaxGetFields = {
		def screens = Screens.get(params.id)
		println ajaxGetFields
		render screens?.fields as JSON
	}
}
