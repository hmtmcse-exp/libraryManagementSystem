<%@ page import="grails.tutorial.lms.Member" %>


<div class="form-group">
	<label for="address">
		<g:message code="address" default="ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" required="" name="roll" value="${memberInstance?.roll}"/>
</div>



<div class="form-group">
	<label for="firstName">
		<g:message code="firstName" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="firstName" required="" value="${memberInstance?.firstName}"/>

</div>

<div class="form-group">
	<label for="lastName">
		<g:message code="lastName" default="Last Name" />
		
	</label>
	<g:textField class="form-control" name="lastName" value="${memberInstance?.lastName}"/>

</div>

<div class="form-group">
	<label for="gender">
		<g:message code="gender" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="gender" required="" value="${memberInstance?.gender}"/>

</div>

<div class="form-group">
	<label for="email">
		<g:message code="email" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="email" required="" value="${memberInstance?.email}"/>

</div>

<div class="form-group">
	<label for="mobile">
		<g:message code="mobile" default="Mobile" />
		
	</label>
	<g:textField class="form-control" name="mobile" value="${memberInstance?.mobile}"/>

</div>

<div class="form-group">
	<label for="address">
		<g:message code="address" default="Address" />
		
	</label>
	<g:textField class="form-control" name="address" value="${memberInstance?.address}"/>

</div>

