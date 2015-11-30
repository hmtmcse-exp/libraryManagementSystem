<%@ page import="grails.tutorial.lms.Book" %>
<meta name="layout" content="my-layout">
<title><g:message code="bookInstance" default="Book"/> List</title>
<div class="row">
    <div class="panel panel-primary">
        <div class="panel-heading">
            Book List
        </div>
        <div class="panel-body">
            <table class="table table-bordered table-striped">
                <thead>
                <tr>
                    <g:sortableColumn property="name" title="${message(code: 'name', default: 'Name')}" />
                    <g:sortableColumn property="isbn" title="${message(code: 'isbn', default: 'Isbn')}" />
                    <g:sortableColumn property="copy" title="${message(code: 'copy', default: 'Copy')}" />
                    <g:sortableColumn property="price" title="${message(code: 'price', default: 'Price')}" />
                    <g:sortableColumn property="edition" title="${message(code: 'edition', default: 'Edition')}" />
                    <g:sortableColumn property="description" title="${message(code: 'description', default: 'Description')}" />
                    <th class="action-row" >Action</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${bookInstanceList}" status="i" var="bookInstance">
                    <tr class="text-center">
                        <td>${bookInstance?.book?.name}</td>
                        <td>${bookInstance?.book?.isbn}</td>
                        <td>${bookInstance?.book?.copy}</td>
                        <td>${bookInstance?.book?.edition}</td>
                        <td class="action-row">
                            <div class="btn-toolbar">
                                <div class="btn-group  btn-group-justified">
                                    <g:link controller="Book" class="btn btn-default" action="show" params="[id:bookInstance.id]"><i class="glyphicon glyphicon glyphicon glyphicon-eye-open"></i></g:link>
                                    <g:link controller="Book" class="btn btn-default" action="edit" params="[id:bookInstance.id]"><i class="glyphicon glyphicon glyphicon-pencil"></i></g:link>
                                    <a href="#" class="btn btn-default open-confirm-box" wizard-url="Book/delete/${bookInstance.id}" wizard-title="Delete"><i class="glyphicon glyphicon glyphicon-remove"></i></a>
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

