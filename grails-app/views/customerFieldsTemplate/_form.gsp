<%@ page import="de.nextcommerce.core.CustomerFieldsTemplate" %>



<div class="fieldcontain ${hasErrors(bean: customerFieldsTemplateInstance, field: 'customerField', 'error')} ">
	<label for="customerField">
		<g:message code="customerFieldsTemplate.customerField.label" default="Customer Field" />
		
	</label>
	<g:textField name="customerField" value="${customerFieldsTemplateInstance?.customerField}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerFieldsTemplateInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="customerFieldsTemplate.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${customerFieldsTemplateInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerFieldsTemplateInstance, field: 'fieldType', 'error')} ">
	<label for="fieldType">
		<g:message code="customerFieldsTemplate.fieldType.label" default="Field Type" />
		
	</label>
	<g:textField name="fieldType" value="${customerFieldsTemplateInstance?.fieldType}"/>
</div>

