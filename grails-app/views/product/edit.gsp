<%@ page import="de.nextcommerce.core.Product"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="pages">
<g:set var="entityName"
	value="${message(code: 'product.label', default: 'Product')}" />
<title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>
	<g:render template="detailsNav" />
	<a href="#edit-product" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="list" action="list">
					<g:message code="default.list.label" args="[entityName]" />
				</g:link></li>
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="edit-product" class="content scaffold-edit" role="main">
		<h1>
			<g:message code="default.edit.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<g:hasErrors bean="${productInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${productInstance}" var="error">
					<li
						<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
							error="${error}" /></li>
				</g:eachError>
			</ul>
		</g:hasErrors>
		<g:form method="post">
			<g:hiddenField name="id" value="${productInstance?.id}" />
			<g:hiddenField name="version" value="${productInstance?.version}" />
			<fieldset>
				<legend>Artikel anzeigen</legend>
				<table class="table table-striped">

					<tbody>
						<g:each in="${productInstance}" status="i" var="product">
							<g:each in="${productInstance.itemProperties}" status="item"
								var="itemInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

									<td>
										${itemInstance.itemKey}
									</td>

									<g:if test="${itemInstance.fielType == 'Text'}">
										<td><g:textField 
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
				<g:actionSubmit class="save" action="update"
					value="${message(code: 'default.button.update.label', default: 'Update')}" />
				<g:actionSubmit class="delete" action="delete"
					value="${message(code: 'default.button.delete.label', default: 'Delete')}"
					formnovalidate=""
					onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>
