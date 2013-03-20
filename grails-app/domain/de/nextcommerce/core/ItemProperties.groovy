package de.nextcommerce.core

class ItemProperties {
	
	String itemKey
	String itemValue
	String fielType
	

    static constraints = {
    }
	
	static mapping = {
		itemValue column: "itemValue", sqlType: "text"
	}
	
}
