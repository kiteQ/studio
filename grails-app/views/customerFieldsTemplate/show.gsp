
<%@ page import="de.nextcommerce.core.CustomerFieldsTemplate" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'customerFieldsTemplate.label', default: 'CustomerFieldsTemplate')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-customerFieldsTemplate" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-customerFieldsTemplate" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list customerFieldsTemplate">
			
				<g:if test="${customerFieldsTemplateInstance?.customerField}">
				<li class="fieldcontain">
					<span id="customerField-label" class="property-label"><g:message code="customerFieldsTemplate.customerField.label" default="Customer Field" /></span>
					
						<span class="property-value" aria-labelledby="customerField-label"><g:fieldValue bean="${customerFieldsTemplateInstance}" field="customerField"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerFieldsTemplateInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="customerFieldsTemplate.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${customerFieldsTemplateInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerFieldsTemplateInstance?.fieldType}">
				<li class="fieldcontain">
					<span id="fieldType-label" class="property-label"><g:message code="customerFieldsTemplate.fieldType.label" default="Field Type" /></span>
					
						<span class="property-value" aria-labelledby="fieldType-label"><g:fieldValue bean="${customerFieldsTemplateInstance}" field="fieldType"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${customerFieldsTemplateInstance?.id}" />
					<g:link class="edit" action="edit" id="${customerFieldsTemplateInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-primary" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
