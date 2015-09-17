
<%@ page import="grails.tutorial.lms.Member" %>
<meta name="layout" content="my-layout">
<title><g:message code="memberInstance" default="Member"/> List</title>
<div class="row">
	<div class="panel panel-primary">
		<div class="panel-heading">
			Member List
		</div>
		<div class="panel-body">
			<div class="navbar-form navbar-right" >
				<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
					<div class="btn-group" role="group" aria-label="Third group">


						<g:form controller="Member" action="index" method="GET">
							<div class="input-group" id="search-area">
								<div class="input-group-btn">
									<div class="btn-group">
										<button type="button" class="btn btn-default selected-column-label">Select</button>
										<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
											<span class="caret"></span>
											<span class="sr-only">Toggle Dropdown</span>
										</button>
										<ul class="dropdown-menu selected-column-name" role="menu" selected-data="${params.colName}">

											
											<li data="firstName"><a href="#"><g:message code="firstName" default="First Name" /></a></li>
											
											<li data="lastName"><a href="#"><g:message code="lastName" default="Last Name" /></a></li>
											
											<li data="gender"><a href="#"><g:message code="gender" default="Gender" /></a></li>
											
											<li data="email"><a href="#"><g:message code="email" default="Email" /></a></li>
											
											<li data="mobile"><a href="#"><g:message code="mobile" default="Mobile" /></a></li>
											
											<li data="address"><a href="#"><g:message code="address" default="Address" /></a></li>
											
										</ul>
									</div>
								</div>
								<g:textField name="colValue" class="form-control" value="${params?.colValue}"/>
								<g:hiddenField name="colName" class="selected-column-name" value="${params?.colName}"/>
								<span class="input-group-btn">
									<button class="btn btn-default" type="submit">Search</button>
								</span>
							</div>
						</g:form>


					</div>
					<div class="btn-group" role="group" aria-label="First group">
						<g:link action="create" controller="Member" class="btn  btn-success">Add New</g:link>
						<g:link action="index" controller="Member" class="btn  btn-info">Reload</g:link>
					</div>
				</div>
			</div>
			<table class="table table-bordered table-striped">
				<thead>
				<tr>
					
					<g:sortableColumn property="firstName" title="${message(code: 'firstName', default: 'First Name')}" />
					
					<g:sortableColumn property="lastName" title="${message(code: 'lastName', default: 'Last Name')}" />
					
					<g:sortableColumn property="gender" title="${message(code: 'gender', default: 'Gender')}" />
					
					<g:sortableColumn property="email" title="${message(code: 'email', default: 'Email')}" />
					
					<g:sortableColumn property="mobile" title="${message(code: 'mobile', default: 'Mobile')}" />
					
					<g:sortableColumn property="address" title="${message(code: 'address', default: 'Address')}" />
					
					<th class="action-row" >Action</th>
				</tr>
				</thead>
				<tbody>
				<g:each in="${memberInstanceList}" status="i" var="memberInstance">
					<tr class="text-center">
						
						<td>${memberInstance?.firstName}</td>
						
						<td>${memberInstance?.lastName}</td>
						
						<td>${memberInstance?.gender}</td>
						
						<td>${memberInstance?.email}</td>
						
						<td>${memberInstance?.mobile}</td>
						
						<td>${memberInstance?.address}</td>
						
						<td class="action-row">
							<div class="btn-toolbar">
								<div class="btn-group  btn-group-justified">
									<g:link controller="Member" class="btn btn-default" action="show" params="[id:memberInstance.id]"><i class="glyphicon glyphicon glyphicon glyphicon-eye-open"></i></g:link>
									<g:link controller="Member" class="btn btn-default" action="edit" params="[id:memberInstance.id]"><i class="glyphicon glyphicon glyphicon-pencil"></i></g:link>
									<a href="#" class="btn btn-default open-confirm-box" wizard-url="Member/delete/${memberInstance.id}" wizard-title="Delete"><i class="glyphicon glyphicon glyphicon-remove"></i></a>
								</div>
							</div>
						</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginate">
				<g:paginate total="${memberInstanceInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
</div>

