
<%@ page import="grails.tutorial.lms.Author" %>
<meta name="layout" content="my-layout">
<title><g:message code="authorInstance" default="Author"/> List</title>
<div class="row">
	<div class="panel panel-primary">
		<div class="panel-heading">
			Author List
		</div>
		<div class="panel-body">
			<div class="navbar-form navbar-right" >
				<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
					<div class="btn-group" role="group" aria-label="Third group">


						<g:form controller="Author" action="index" method="GET">
							<div class="input-group" id="search-area">
								<div class="input-group-btn">
									<div class="btn-group">
										<button type="button" class="btn btn-default selected-column-label">Select</button>
										<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
											<span class="caret"></span>
											<span class="sr-only">Toggle Dropdown</span>
										</button>
										<ul class="dropdown-menu selected-column-name" role="menu" selected-data="${params.colName}">

											
											<li data="name"><a href="#"><g:message code="name" default="Name" /></a></li>
											
											<li data="dob"><a href="#"><g:message code="dob" default="Dob" /></a></li>
											
											<li data="bio"><a href="#"><g:message code="bio" default="Bio" /></a></li>
											
											<li data="dateCreated"><a href="#"><g:message code="dateCreated" default="Date Created" /></a></li>
											
											<li data="lastUpdated"><a href="#"><g:message code="lastUpdated" default="Last Updated" /></a></li>
											
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
						<g:link action="create" controller="Author" class="btn  btn-success">Add New</g:link>
						<g:link action="index" controller="Author" class="btn  btn-info">Reload</g:link>
					</div>
				</div>
			</div>
			<table class="table table-bordered table-striped">
				<thead>
				<tr>
					
					<g:sortableColumn property="name" title="${message(code: 'name', default: 'Name')}" />
					
					<g:sortableColumn property="dob" title="${message(code: 'dob', default: 'Dob')}" />
					
					<g:sortableColumn property="bio" title="${message(code: 'bio', default: 'Bio')}" />
					
					<g:sortableColumn property="dateCreated" title="${message(code: 'dateCreated', default: 'Date Created')}" />
					
					<g:sortableColumn property="lastUpdated" title="${message(code: 'lastUpdated', default: 'Last Updated')}" />
					
					<th class="action-row" >Action</th>
				</tr>
				</thead>
				<tbody>
				<g:each in="${authorInstanceList}" status="i" var="authorInstance">
					<tr class="text-center">
						
						<td>${authorInstance?.name}</td>
						
						<td><g:formatDate date="${authorInstance.dob}" format="dd MMM yyyy" /></td>
						
						<td>${authorInstance?.bio}</td>
						
						<td><g:formatDate date="${authorInstance.dateCreated}" format="dd MMM yyyy" /></td>
						
						<td><g:formatDate date="${authorInstance.lastUpdated}" format="dd MMM yyyy" /></td>
						
						<td class="action-row">
							<div class="btn-toolbar">
								<div class="btn-group  btn-group-justified">
									<g:link controller="Author" class="btn btn-default" action="show" params="[id:authorInstance.id]"><i class="glyphicon glyphicon glyphicon glyphicon-eye-open"></i></g:link>
									<g:link controller="Author" class="btn btn-default" action="edit" params="[id:authorInstance.id]"><i class="glyphicon glyphicon glyphicon-pencil"></i></g:link>
									<a href="#" class="btn btn-default open-confirm-box" wizard-url="Author/delete/${authorInstance.id}" wizard-title="Delete"><i class="glyphicon glyphicon glyphicon-remove"></i></a>
								</div>
							</div>
						</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginate">
				<g:paginate total="${authorInstanceInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
</div>

