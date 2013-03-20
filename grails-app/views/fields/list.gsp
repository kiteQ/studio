
<%@ page import="de.nextcommerce.core.Fields" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="pages">
		<g:set var="entityName" value="${message(code: 'fields.label', default: 'Fields')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
			<g:render template="detailsNav"/>
		
		
		
		<div id="list-fields" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
				<thead>
					<tr>
					
						<g:sortableColumn property="fieldDescription" title="${message(code: 'fields.fieldDescription.label', default: 'Field Description')}" />
					
						<g:sortableColumn property="fieldName" title="${message(code: 'fields.fieldName.label', default: 'Field Name')}" />
					
						<g:sortableColumn property="fieldType" title="${message(code: 'fields.fieldType.label', default: 'Field Type')}" />
					
						<th><g:message code="fields.screen.label" default="Screen" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${fieldsInstanceList}" status="i" var="fieldsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${fieldsInstance.id}">${fieldValue(bean: fieldsInstance, field: "fieldDescription")}</g:link></td>
					
						<td>${fieldValue(bean: fieldsInstance, field: "fieldLable")}</td>
					
						<td><code>${fieldValue(bean: fieldsInstance, field: "fieldType")}</code></td>
					
						<td>${fieldValue(bean: fieldsInstance, field: "screen")}</td>
				
					</tr>
				</g:each>
				</tbody>
			</table>
			    <div class="pagination pagination-centered">
    				<g:paginate total="${fieldsInstanceTotal}" max="3"/>
    			</div>
			
		</div>
	</body>
</html>
