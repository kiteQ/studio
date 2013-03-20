package de.nextcommerce.core


class Product extends Items{
	
	static searchable = true
	String name
	List categories
	static belongsTo = [screen: Screens]
	static hasMany = [itemProperties: ItemProperties, categories: Category]
	
	
    static constraints = {
		
    }
	
	
	
	
}
