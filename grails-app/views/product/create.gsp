
<%@page defaultCodec="html"%>
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
		<g:form name="articleForm">
			<fieldset>
				<legend>Artikel anlegen</legend>
				<label for="categories"> <g:message
						code="product.categories.label" default="Categories" />

				</label>
				<g:select name="categories"
					from="${de.nextcommerce.core.Category.list()}" multiple="multiple"
					optionKey="id" size="5" value="${productInstance?.categories*.id}"
					class="many-to-many" />
				<div
					class="fieldcontain ${hasErrors(bean: productInstance, field: 'name', 'error')} ">
					<label for="name"> <g:message code="product.name.label"
							default="Name" />

					</label>
					<g:textField name="name" value="${productInstance?.name}" />
				</div>

				<table class="table table-striped">

					<tbody>
						<g:each in="${fieldList}" status="i" var="fieldListInstance">
							<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

								<td>
									${fieldListInstance.customLable}
								</td>

								<g:if test="${fieldListInstance.fieldType == 'Text'}">
									<td><g:textField class="span4"
											name="${fieldListInstance.customLable}"
											value="${fieldListInstance.fieldType}" /></td>

								</g:if>
								<g:elseif test="${fieldListInstance.fieldType == 'TextArea'}">
									<td><g:textArea name="${fieldListInstance.customLable}"
											value="${fieldListInstance.fieldType}" rows="5" cols="40" /></td>
								</g:elseif>
								<g:elseif test="${fieldListInstance.fieldType == 'Checkbox'}">
									<td><g:checkBox name="${fieldListInstance.customLable}"
											value="${true}" /></td>
								</g:elseif>
								<g:elseif test="${fieldListInstance.fieldType == 'WYSIWYG'}">
									<td><ckeditor:editor
											name="${fieldListInstance.customLable}" height="250px"
											width="100%">
											${initialValue}
										</ckeditor:editor></td>
								</g:elseif>
								<g:elseif test="${fieldListInstance.fieldType == 'DatePicker'}">
									<td><g:datePicker name="${fieldListInstance.customLable}"
											value="${new Date()}" precision="month"
											noSelection="['':'-Choose-']" relativeYears="[-2..7]" /></td>
								</g:elseif>
							</tr>
						</g:each>
					</tbody>
				</table>
			</fieldset>
			<g:actionSubmit action="save" class="btn btn-primary"
				value="Speichern" />
		</g:form>
	</div>
</body>
</html>
