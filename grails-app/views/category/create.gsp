<%@ page import="de.nextcommerce.core.Category"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="pages">
<g:set var="entityName"
	value="${message(code: 'category.label', default: 'Category')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>
<body>
	<a href="#create-category" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="list" action="list">
					<g:message code="default.list.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="create-category" class="content scaffold-create" role="main">

		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<g:hasErrors bean="${categoryInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${categoryInstance}" var="error">
					<li
						<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
							error="${error}" /></li>
				</g:eachError>
			</ul>
		</g:hasErrors>
		<g:form action="save">
			<fieldset>
				<legend>Kategorie anlegen</legend>
				
				<div
					class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'name', 'error')} ">
					<label for="name"> <g:message code="product.name.label"
							default="Name" />

					</label>
					<g:textField name="name" value="${categoryInstance?.name}" />
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
											name="${fieldListInstance.customLable}" height="125px"
											width="98%">
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
