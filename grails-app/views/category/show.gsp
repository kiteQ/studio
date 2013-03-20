
<%@ page import="de.nextcommerce.core.Category" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="pages">
		<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

	<g:form name="articleForm">
		<fieldset>
			<legend>Categorie anzeigen</legend>
			<table class="table table-striped">

				<tbody>
					<g:each in="${categoryInstance}" status="i" var="category">
						<g:each in="${categoryInstance.itemProperties}" status="item"
							var="itemInstance">
							<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

								<td>
									${itemInstance.itemKey}
								</td>

								<g:if test="${itemInstance.fielType == 'Text'}">
									<td><g:textField readonly="readonly" class="input-xlarge uneditable-input"
											name="${itemInstance.itemKey}"
											value="${itemInstance.itemValue}" /></td>
								</g:if>

							</tr>
						</g:each>
					</g:each>
				</tbody>
			</table>
		</fieldset>

		<fieldset class="buttons">
			<g:hiddenField name="id" value="${categoryInstance?.id}" />
			<g:link class="edit" action="edit" id="${categoryInstance?.id}">
				<g:message code="default.button.edit.label" default="Edit" />
			</g:link>
			<g:actionSubmit class="btn btn-primary" action="delete"
				value="${message(code: 'default.button.delete.label', default: 'Delete')}"
				onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
		</fieldset>
	</g:form>
	</div>
</body>
</html>
