<%@ page import="de.nextcommerce.core.Fields" %>



<div class="fieldcontain ${hasErrors(bean: fieldsInstance, field: 'fieldDescription', 'error')} ">
	<label for="fieldDescription">
		<g:message code="fields.fieldDescription.label" default="Field Description" />
		
	</label>
	<g:textField name="fieldDescription" value="${fieldsInstance?.fieldDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fieldsInstance, field: 'fieldName', 'error')} ">
	<label for="fieldName">
		<g:message code="fields.fieldName.label" default="Field Name" />
		
	</label>
	<g:textField name="fieldName" value="${fieldsInstance?.fieldName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fieldsInstance, field: 'fieldType', 'error')} ">
	<label for="fieldType">
		<g:message code="fields.fieldType.label" default="Field Type" />
		
	</label>
	<g:textField name="fieldType" value="${fieldsInstance?.fieldType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fieldsInstance, field: 'screen', 'error')} required">
	<label for="screen">
		<g:message code="fields.screen.label" default="Screen" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="screen" name="screen.id" from="${de.nextcommerce.core.Screens.list()}" optionKey="id" required="" value="${fieldsInstance?.screen?.id}" class="many-to-one"/>
</div>

