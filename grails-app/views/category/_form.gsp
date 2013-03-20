<%@ page import="de.nextcommerce.core.Category" %>



<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="category.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${categoryInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'code', 'error')} ">
	<label for="code">
		<g:message code="category.code.label" default="Code" />
		
	</label>
	<g:textField name="code" value="${categoryInstance?.code}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'isMain', 'error')} ">
	<label for="isMain">
		<g:message code="category.isMain.label" default="Is Main" />
		
	</label>
	<g:checkBox name="isMain" value="${categoryInstance?.isMain}" />
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'products', 'error')} ">
	<label for="products">
		<g:message code="category.products.label" default="Products" />
		
	</label>
	
</div>

