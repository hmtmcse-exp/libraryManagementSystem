<%@ page import="grails.tutorial.lms.Category" %>



<div class="form-group">
	<label for="name">
		<g:message code="name" default="Name" />
		
	</label>
	<g:textField class="form-control" name="name" value="${categoryInstance?.name}"/>

</div>

<div class="form-group">
	<label for="description">
		<g:message code="description" default="Description" />
		
	</label>
	<g:textField class="form-control" name="description" value="${categoryInstance?.description}"/>

</div>

<div class="form-group">
	<label for="book">
		<g:message code="book" default="Book" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${categoryInstance?.book?}" var="b">
    <li><g:link controller="book" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="book" action="create" params="['category.id': categoryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'book.label', default: 'Book')])}</g:link>
</li>
</ul>


</div>

