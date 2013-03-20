package de.nextcommerce.core

import org.springframework.dao.DataIntegrityViolationException

class ProductController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	def fieldList

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
		
        [productInstanceList: Product.list(params), productInstanceTotal: Product.count()]
		
    }

    def create() {
        [productInstance: new Product()]
		def screen = Screens.get(1)
		fieldList = screen.fields
		[fieldList: screen.fields]
    }

    def save() {
		
		println params
		def screen = Screens.get(1)
		def productInstance = new Product(screen: screen )
		
		
		def category = Category.get(params.categories)
		
		params.remove('_action_save')
		params.remove('customPrefix')
		params.remove('controller')
		params.remove('action')
		params.remove('_Aktiv')
		
		params.entrySet().findAll {
			if(it.key == "name"){
				
				productInstance.setName(it.value)
			}
			productInstance.addToItemProperties(new ItemProperties(itemKey: "$it.key", itemValue: "$it.value", fielType: 'Text'))
		}
		
		productInstance.addToCategories(category)
		
	    if (!productInstance.save(flush: true)) {
			render(view: "list", model: [productInstance: productInstance, productInstanceTotal: Product.count()])
            return
        }
        flash.message = message(code: 'default.created.message', args: [message(code: 'product.label', default: 'Product'), productInstance.id])
        redirect(action: "show", id: productInstance.id)
    }

    def show(Long id) {
        def productInstance = Product.get(id)
	
        if (!productInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), id])
			redirect(action: "list")
            return
        }

        [productInstance: productInstance]
    }

    def edit(Long id) {
        def productInstance = Product.get(id)
        if (!productInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), id])
            redirect(action: "list")
            return
        }

        [productInstance: productInstance]
    }

    def update(Long id, Long version) {
		
		
		
        def productInstance = Product.get(id)
        if (!productInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (productInstance.version > version) {
                productInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'product.label', default: 'Product')] as Object[],
                          "Another user has updated this Product while you were editing")
                render(view: "edit", model: [productInstance: productInstance])
                return
            }
        }
		
		params.remove('_action_save')
		params.remove('customPrefix')
		params.remove('controller')
		params.remove('action')
		params.remove('_Aktiv')
		
		productInstance.properties = params

        if (!productInstance.save(flush: true)) {
            render(view: "edit", model: [productInstance: productInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'product.label', default: 'Product'), productInstance.id])
        redirect(action: "show", id: productInstance.id)
    }

    def delete(Long id) {
        def productInstance = Product.get(id)
        if (!productInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), id])
            redirect(action: "list")
            return
        }

        try {
            productInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'product.label', default: 'Product'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'product.label', default: 'Product'), id])
            redirect(action: "show", id: id)
        }
		
	
		
		
    }
	
	def categories(Long id){
		def category = Category.get(1)
		
		def productInstance = Product.findByCategories(categories)
		if (!productInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), id])
			
			return
		}
	
	}
}
