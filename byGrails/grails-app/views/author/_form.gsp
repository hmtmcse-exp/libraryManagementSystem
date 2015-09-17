<%@ page import="grails.tutorial.lms.Author" %>



<div class="form-group">
	<label for="name">
		<g:message code="name" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="name" required="" value="${authorInstance?.name}"/>

</div>

<div class="form-group">
	<label for="dob">
		<g:message code="dob" default="Dob" />
		
	</label>
	<g:textField name="dob" class="datepicker form-control" readonly="readonly"  value="${authorInstance?.dob}" default="none" noSelection="['': '']" />

</div>

<div class="form-group">
	<label for="bio">
		<g:message code="bio" default="Bio" />
		
	</label>
	<g:textField class="form-control" name="bio" value="${authorInstance?.bio}"/>

</div>

<div class="form-group">
	<label for="book">
		<g:message code="book" default="Book" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${authorInstance?.book?}" var="b">
    <li><g:link controller="book" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="book" action="create" params="['author.id': authorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'book.label', default: 'Book')])}</g:link>
</li>
</ul>


</div>

