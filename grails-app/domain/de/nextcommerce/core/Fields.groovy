package de.nextcommerce.core



class Fields implements Serializable {

	static searchable = true

	String fieldType

	String fieldLable

	String fieldDescription

	String customLable

	String customDescription
	
	

	static belongsTo = [screen:Screens]


	static constraints = {


		fieldDescription column: "fieldDescription", sqlType: "text"
		customDescription column: "customDescription", sqlType: "text"
	}
}
