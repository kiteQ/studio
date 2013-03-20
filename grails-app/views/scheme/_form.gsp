<%@ page import="de.nextcommerce.core.Scheme" %>



<div class="fieldcontain ${hasErrors(bean: schemeInstance, field: 'schemeName', 'error')} ">
	<label for="schemeName">
		<g:message code="scheme.schemeName.label" default="Scheme Name" />
		
	</label>
	<g:textField name="schemeName" value="${schemeInstance?.schemeName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: schemeInstance, field: 'screen', 'error')} ">
	<label for="screen">
		<g:message code="scheme.screen.label" default="Screen" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${schemeInstance?.screen?}" var="s">
    <li><g:link controller="screens" action="show" id="${s.id}">${schemeInstance.screenName}</g:link></li>
</g:each>
<li class="add">
<g:link controller="screens" action="create" params="['scheme.id': schemeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'screens.label', default: 'Screens')])}</g:link>
</li>
</ul>

</div>

