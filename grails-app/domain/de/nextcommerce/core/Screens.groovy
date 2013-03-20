package de.nextcommerce.core


class Screens implements Serializable {
	
	static searchable = true
	String screenName
	Scheme scheme
	
	static hasMany = [fields: Fields]
	static belongsTo = [scheme: Scheme]
	

    static constraints = {
    }
}
