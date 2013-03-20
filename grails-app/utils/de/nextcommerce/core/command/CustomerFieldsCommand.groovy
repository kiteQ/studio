package de.nextcommerce.core.command

import de.nextcommerce.core.CustomerFieldsTemplate

class CustomerFieldsCommand implements Serializable {
	
	String customerField
	String description
	String fieldType
	
	List<CustomerFieldsTemplate> getCustomerFields(){	
		
		return CustomerFieldsTemplate.list()
	}


}
