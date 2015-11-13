<%@ page import="grails.tutorial.lms.Book" %>
<meta name="layout" content="front">
<title><g:message code="bookInstance" default="Book"/> List</title>
<div class="row">
    <div class="panel panel-primary">
        <div class="panel-heading">
            Book List
        </div>
        <div class="panel-body">
            <table class="table table-bordered table-striped">
                <thead>
                <tr class="text-center">
                    <g:sortableColumn property="name" title="${message(code: 'name', default: 'Name')}" />
                    <g:sortableColumn property="isbn" title="${message(code: 'isbn', default: 'Isbn')}" />
                    <g:sortableColumn property="copy" title="${message(code: 'copy', default: 'Copy')}" />
                    <g:sortableColumn property="price" title="${message(code: 'price', default: 'Price')}" />
                    <g:sortableColumn property="edition" title="${message(code: 'edition', default: 'Edition')}" />
                    <th class="action-row-front">Action</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${bookInstanceList}" status="i" var="bookInstance">
                    <tr class="text-center">
                        <td>${bookInstance?.name}</td>
                        <td>${bookInstance?.isbn}</td>
                        <td>${bookInstance?.copy}</td>
                        <td>${bookInstance?.price}</td>
                        <td>${bookInstance?.edition}</td>
                        <td>
                            <div class="btn-group" role="group" aria-label="First group">
                                <a href="/byGrails/author/create" class="btn  btn-success">Details</a>
                                <a href="/byGrails/author/index" class="btn  btn-info">Borrow Request</a>
                            </div>
                        </td>

                    </tr>
                </g:each>
                </tbody>
            </table>
            <div class="paginate">
                <g:paginate total="${bookInstanceInstanceCount ?: 0}" />
            </div>
        </div>
    </div>
</div>

