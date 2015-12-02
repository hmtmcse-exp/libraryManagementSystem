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
                    <th>Name</th>
                    <th>Isbn</th>
                    <th>Copy</th>
                    <th>Price</th>
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
                                    <g:link controller="Book" class="btn btn-default" action="approveBorrowBookByID" params="[borrowID:bookInstance.id]"><i class="glyphicon glyphicon-ok"></i></g:link>
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

