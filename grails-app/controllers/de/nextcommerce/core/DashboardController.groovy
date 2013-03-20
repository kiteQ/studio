package de.nextcommerce.core

import org.springframework.dao.DataIntegrityViolationException
import org.springframework.security.access.annotation.Secured

@Secured(['ROLE_ADMIN'])
class DashboardController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [dashboardInstanceList: Dashboard.list(params), dashboardInstanceTotal: Dashboard.count()]
    }

    def create() {
        [dashboardInstance: new Dashboard(params)]
    }

    def save() {
        def dashboardInstance = new Dashboard(params)
        if (!dashboardInstance.save(flush: true)) {
            render(view: "create", model: [dashboardInstance: dashboardInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'dashboard.label', default: 'Dashboard'), dashboardInstance.id])
        redirect(action: "show", id: dashboardInstance.id)
    }

    def show(Long id) {
        def dashboardInstance = Dashboard.get(id)
        if (!dashboardInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'dashboard.label', default: 'Dashboard'), id])
            redirect(action: "list")
            return
        }

        [dashboardInstance: dashboardInstance]
    }

    def edit(Long id) {
        def dashboardInstance = Dashboard.get(id)
        if (!dashboardInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'dashboard.label', default: 'Dashboard'), id])
            redirect(action: "list")
            return
        }

        [dashboardInstance: dashboardInstance]
    }

    def update(Long id, Long version) {
        def dashboardInstance = Dashboard.get(id)
        if (!dashboardInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'dashboard.label', default: 'Dashboard'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (dashboardInstance.version > version) {
                dashboardInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'dashboard.label', default: 'Dashboard')] as Object[],
                          "Another user has updated this Dashboard while you were editing")
                render(view: "edit", model: [dashboardInstance: dashboardInstance])
                return
            }
        }

        dashboardInstance.properties = params

        if (!dashboardInstance.save(flush: true)) {
            render(view: "edit", model: [dashboardInstance: dashboardInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'dashboard.label', default: 'Dashboard'), dashboardInstance.id])
        redirect(action: "show", id: dashboardInstance.id)
    }

    def delete(Long id) {
        def dashboardInstance = Dashboard.get(id)
        if (!dashboardInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'dashboard.label', default: 'Dashboard'), id])
            redirect(action: "list")
            return
        }

        try {
            dashboardInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'dashboard.label', default: 'Dashboard'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'dashboard.label', default: 'Dashboard'), id])
            redirect(action: "show", id: id)
        }
    }
}
