import de.nextcommerce.core.secure.Requestmap


class RequestmapController {

	def index() {
	}

	def save = {
		def requestmapInstance = new Requestmap(params) 
			if (!requestmapInstance.save(flush: true)) {
				render view: 'create', model: [requestmapInstance: requestmapInstance]
				 return
		}

		springSecurityService.clearCachedRequestmaps() 
		flash.message = "${message(code: 'default.created.message', args: [message(code: 'requestmap.label', default: 'Requestmap'), requestmapInstance.id])}" 
		redirect action: show, id: requestmapInstance.id
	}
}
