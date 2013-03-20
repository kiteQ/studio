
<%@ page import="de.nextcommerce.core.Fields" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="pages">
		<g:set var="entityName" value="${message(code: 'fields.label', default: 'Fields')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-fields" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-fields" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list fields">
			
				<g:if test="${fieldsInstance?.fieldDescription}">
				<li class="fieldcontain">
					<span id="fieldDescription-label" class="property-label"><g:message code="fields.fieldDescription.label" default="Field Description" /></span>
					
						<span class="property-value" aria-labelledby="fieldDescription-label"><g:fieldValue bean="${fieldsInstance}" field="fieldDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fieldsInstance?.fieldName}">
				<li class="fieldcontain">
					<span id="fieldName-label" class="property-label"><g:message code="fields.fieldName.label" default="Field Name" /></span>
					
						<span class="property-value" aria-labelledby="fieldName-label"><g:fieldValue bean="${fieldsInstance}" field="fieldName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fieldsInstance?.fieldType}">
				<li class="fieldcontain">
					<span id="fieldType-label" class="property-label"><g:message code="fields.fieldType.label" default="Field Type" /></span>
					
						<span class="property-value" aria-labelledby="fieldType-label"><g:fieldValue bean="${fieldsInstance}" field="fieldType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fieldsInstance?.screen}">
				<li class="fieldcontain">
					<span id="screen-label" class="property-label"><g:message code="fields.screen.label" default="Screen" /></span>
					
						<span class="property-value" aria-labelledby="screen-label"><g:link controller="screens" action="show" id="${fieldsInstance?.screen?.id}">${fieldsInstance?.screen?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${fieldsInstance?.id}" />
					<g:link class="edit" action="edit" id="${fieldsInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-primary" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
