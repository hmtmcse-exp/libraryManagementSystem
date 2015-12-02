
<%@ page import="grails.tutorial.lms.Member" %>
<meta name="layout" content="my-layout">
<title><g:message code="memberInstance" default="Member"/> List</title>
<div class="row">
	<div class="panel panel-primary">
		<div class="panel-heading">
			Member List
		</div>
		<div class="panel-body">
			<table class="table table-bordered table-striped">
				<thead>
				<tr>
					<g:sortableColumn property="roll" title="${message(code: 'mobile', default: 'ID')}" />
					<g:sortableColumn property="firstName" title="${message(code: 'firstName', default: 'First Name')}" />
					
					<g:sortableColumn property="lastName" title="${message(code: 'lastName', default: 'Last Name')}" />
					
					<g:sortableColumn property="gender" title="${message(code: 'gender', default: 'Gender')}" />
					
					<g:sortableColumn property="email" title="${message(code: 'email', default: 'Email')}" />

					
					<th class="action-row" >Action</th>
				</tr>
				</thead>
				<tbody>
				<g:each in="${memberInstanceList}" status="i" var="memberInstance">
					<tr class="text-center">
						<td>${memberInstance?.roll}</td>
						<td>${memberInstance?.firstName}</td>
						<td>${memberInstance?.lastName}</td>
						<td>${memberInstance?.gender}</td>
						<td>${memberInstance?.email}</td>

						<td class="action-row">
							<div class="btn-toolbar">
								<div class="btn-group  btn-group-justified">
									<g:link controller="Member" class="btn btn-default" action="approve" params="[id:memberInstance.id]"><i class="glyphicon glyphicon-ok"></i></g:link>
								</div>
							</div>
						</td>
					</tr>
				</g:each>
				</tbody>
			</table>
		</div>
	</div>
</div>

