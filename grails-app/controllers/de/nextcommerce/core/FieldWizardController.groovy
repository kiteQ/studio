package de.nextcommerce.core

import de.nextcommerce.core.command.CustomerFieldsCommand


class FieldWizardController {
	
	
	
    def newFieldWizardFlow = { 
		showScreens{
			on("fieldwizard") {
				flow.screenid = params.screen
				
			}.to "listFieldTemplate"		
		}
		
		chooseField{
			on("transitionToFieldDetails") { 
				flow.chooseFieldTemplate = params.chooseField
				def fieldTemplate = CustomerFieldsTemplate.get(params.chooseField)
				
				
				flow.fieldLable = fieldTemplate.customerField
				flow.description = fieldTemplate.description
				flow.typ = fieldTemplate.fieldType
				
				println flow.fieldLable
				println flow.description
				println flow.typ
				
				
			}.to "fieldDetailsScreen"
			on("back").to "showScreens"
			on("abort").to "abortWizard"
			
		}
		
		fieldDetailsScreen {
			on("transitionToFieldFinish") { 
				
				flow.customLable = params.customLable
				flow.customDescription = params.customDescription
				
				def f = new Fields(fieldType: flow.typ, fieldLable: flow.fieldLable, fieldDescription: flow.description, customLable: flow.customLable, 
									customDescription: flow.customDescription, customPrefix: flow.customPrefix	)
				def screens =  Screens.get(flow.screenid)
				f.screen = screens
				f.save()
				
				println f
				
				
				
			}.to "finishScreen"
			on("back").to "chooseScreens"
			on("abort").to "abortWizard"
			
		}
		
		
		
		finishScreen() 
			 cancelTransaction {
				 	redirect(controller:"fields")
			 }
			
	   		  
		
		abortWizard {
			redirect(controller: "fields", action:"list")
	   }
		
		
	   listFieldTemplate{
		   action {
			   [customerFieldsTemplateList: CustomerFieldsTemplate.list()]
			  
		   }
		   on ("success").to "chooseField"	
		   on(Exception).to "handleError"
	   }	
	}
 
}
