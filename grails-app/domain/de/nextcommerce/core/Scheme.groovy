package de.nextcommerce.core

class Scheme {
	
	static searchable = true
	String schemeName
	static hasMany = [screen:Screens]
	

    static constraints = {
    }
}
