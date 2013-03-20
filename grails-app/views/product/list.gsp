
<%@ page import="de.nextcommerce.core.Product"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="pages">
<g:set var="entityName"
	value="${message(code: 'product.label', default: 'Product')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<g:render template="detailsNav" />



	<div id="list-product" class="content scaffold-list" role="main">
		
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<fieldset>
			<legend>Artikelliste</legend>
		<table class="table table-condensed">

			<tbody>
				<g:each in="${productInstanceList}" status="i" var="productInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							<td>
								<g:link action="show" id="${productInstance.id}">
									${productInstance.id}
								</g:link>
							</td>
							
							<td>
								${productInstance.name}
							</td>
							<td>
								${productInstance.categories.name}
							</td>
						</tr>
				</g:each>
			</tbody>
		</table>
		</fieldset>
		<div class="pagination">
			<g:paginate total="${productInstanceTotal}" />
		</div>
	</div>
	
</body>
</html>
