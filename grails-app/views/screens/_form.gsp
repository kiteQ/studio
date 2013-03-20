<%@ page import="de.nextcommerce.core.Screens" %>



<div class="fieldcontain ${hasErrors(bean: screensInstance, field: 'fields', 'error')} ">
	<label for="fields">
		<g:message code="screens.fields.label" default="Fields" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${screensInstance?.fields?}" var="f">
    <li><g:link controller="fields" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="fields" action="create" params="['screens.id': screensInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'fields.label', default: 'Fields')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: screensInstance, field: 'scheme', 'error')} required">
	<label for="scheme">
		<g:message code="screens.scheme.label" default="Scheme" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="scheme" name="scheme.id" from="${de.nextcommerce.core.Scheme.list()}" optionValue="schemeName" optionKey="id" required="" value="${screensInstance?.scheme?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: screensInstance, field: 'screenName', 'error')} ">
	<label for="screenName">
		<g:message code="screens.screenName.label" default="Screen Name" />
		
	</label>
	<g:textField name="screenName" value="${screensInstance?.screenName}"/>
</div>

