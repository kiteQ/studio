<%@ page import="de.nextcommerce.core.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'screen', 'error')} required">
	<label for="screen">
		<g:message code="product.screen.label" default="Screen" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="screen" name="screen.id" from="${de.nextcommerce.core.Screens.list()}" optionKey="id" required="" value="${productInstance?.screen?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'categories', 'error')} ">
	<label for="categories">
		<g:message code="product.categories.label" default="Categories" />
		
	</label>
	<g:select name="categories" from="${de.nextcommerce.core.Category.list()}" multiple="multiple" optionKey="id" size="5" value="${productInstance?.categories*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'code', 'error')} ">
	<label for="code">
		<g:message code="product.code.label" default="Code" />
		
	</label>
	<g:textField name="code" value="${productInstance?.code}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="product.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${productInstance?.name}"/>
</div>

