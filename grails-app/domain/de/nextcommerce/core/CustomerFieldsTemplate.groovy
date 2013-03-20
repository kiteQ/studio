package de.nextcommerce.core

import java.io.Serializable;

class CustomerFieldsTemplate implements Serializable {
	
	static searchable = true
	String customerField
	String description
	String fieldType
	String dataType
	

    static constraints = {
    }
	
	static mapping = {
		customerField column: "customerField", sqlType: "text"
		description type:'text'
		
    }
	
}
