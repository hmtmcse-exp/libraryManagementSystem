<%@ page import="grails.tutorial.lms.Publisher" %>



<div class="form-group">
	<label for="name">
		<g:message code="name" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="name" required="" value="${publisherInstance?.name}"/>

</div>

<div class="form-group">
	<label for="address">
		<g:message code="address" default="Address" />
		
	</label>
	<g:textField class="form-control" name="address" value="${publisherInstance?.address}"/>

</div>

<div class="form-group">
	<label for="book">
		<g:message code="book" default="Book" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${publisherInstance?.book?}" var="b">
    <li><g:link controller="book" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="book" action="create" params="['publisher.id': publisherInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'book.label', default: 'Book')])}</g:link>
</li>
</ul>


</div>

