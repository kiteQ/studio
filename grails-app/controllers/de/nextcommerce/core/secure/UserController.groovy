package de.nextcommerce.core.secure

class UserController extends grails.plugins.springsecurity.ui.UserController {
	
	def dashboard() {
		render(view:"dashboard")
	}
	
	def create() {
		[userInstance: new User(params)]
	}
	
}
