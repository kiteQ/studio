
<%@ page import="de.nextcommerce.core.Category"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="pages">
<g:set var="entityName"
	value="${message(code: 'category.label', default: 'Category')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<g:render template="detailsNav" />
	
	<div id="list-category" class="content scaffold-list" role="main">
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<fieldset>
			<legend>Kategorien</legend>
		<table class="table table-condensed">

			<tbody>
				<g:each in="${categoryInstanceList}" status="i" var="category">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

							
							<td>
								<g:link action="show" id="${category.id}">
									${category.id}
								</g:link>
							</td>
							
							<td>
								${category.name}
							</td>
						</tr>
				</g:each>
			</tbody>
		</table>
		</fieldset>
		
	</div>
	
</body>
</html>
