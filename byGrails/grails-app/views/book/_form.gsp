<%@ page import="grails.tutorial.lms.Book" %>



<div class="form-group">
	<label for="name">
		<g:message code="name" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="name" required="" value="${bookInstance?.name}"/>

</div>

<div class="form-group">
	<label for="isbn">
		<g:message code="isbn" default="Isbn" />
		
	</label>
	<g:textField class="form-control" name="isbn" value="${bookInstance?.isbn}"/>

</div>

<div class="form-group">
	<label for="copy">
		<g:message code="copy" default="Copy" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="copy" type="number" class="form-control" value="${bookInstance?.copy}" required=""/>

</div>

<div class="form-group">
	<label for="price">
		<g:message code="price" default="Price" />
	</label>
	<g:field name="price" type="number" class="form-control" value="${bookInstance?.price}"/>

</div>

<div class="form-group">
	<label for="edition">
		<g:message code="edition" default="Edition" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="edition" required="" value="${bookInstance?.edition}"/>

</div>

<div class="form-group">
	<label for="description">
		<g:message code="description" default="Description" />
		
	</label>
	<g:textField class="form-control" name="description" value="${bookInstance?.description}"/>

</div>

<div class="form-group">
	<label for="author">
		<g:message code="author" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="author" name="author.id" class="form-control apply-chosen" from="${grails.tutorial.lms.Author.list()}" optionKey="id" optionValue="name" required="" value="${bookInstance?.author?.id}"/>

</div>

<div class="form-group">
	<label for="category">
		<g:message code="category" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" class="form-control apply-chosen" from="${grails.tutorial.lms.Category.list()}" optionKey="id" optionValue="name" required="" value="${bookInstance?.category?.id}"/>

</div>

<div class="form-group">
	<label for="code">
		<g:message code="code" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="code" required="" value="${bookInstance?.code}"/>

</div>

<div class="form-group">
	<label for="publisher">
		<g:message code="publisher" default="Publisher" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="publisher" name="publisher.id" class="form-control apply-chosen" from="${grails.tutorial.lms.Publisher.list()}" optionKey="id" optionValue="name" required="" value="${bookInstance?.publisher?.id}"/>

</div>

