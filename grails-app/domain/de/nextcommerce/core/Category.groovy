package de.nextcommerce.core

class Category extends Items{
	
	
	boolean isMain = false
	String name	
	
	static belongsTo = [screen: Screens]
	static hasMany = [itemProperties: ItemProperties]

	static constraints = {
		
	}
		
	
}
