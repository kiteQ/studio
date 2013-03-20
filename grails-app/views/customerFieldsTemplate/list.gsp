
<%@ page import="de.nextcommerce.core.CustomerFieldsTemplate" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'customerFieldsTemplate.label', default: 'CustomerFieldsTemplate')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
			<g:render template="detailsNav"/>
		
		
		
		<div id="list-customerFieldsTemplate" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
				<thead>
					<tr>
					
						<g:sortableColumn property="customerField" title="${message(code: 'customerFieldsTemplate.customerField.label', default: 'Customer Field')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'customerFieldsTemplate.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="fieldType" title="${message(code: 'customerFieldsTemplate.fieldType.label', default: 'Field Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${customerFieldsTemplateInstanceList}" status="i" var="customerFieldsTemplateInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${customerFieldsTemplateInstance.id}">${fieldValue(bean: customerFieldsTemplateInstance, field: "customerField")}</g:link></td>
					
						<td>${fieldValue(bean: customerFieldsTemplateInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: customerFieldsTemplateInstance, field: "fieldType")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${customerFieldsTemplateInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
