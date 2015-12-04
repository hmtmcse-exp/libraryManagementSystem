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
                    <g:sortableColumn property="edition" title="${message(code: 'edition', default: 'Edition')}" />
                    <th>Status</th>
                    <th class="action-row-front">Action</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${bookInstanceList}" status="i" var="bookInstance">
                    <tr class="text-center">
                        <td>${bookInstance?.book?.name}</td>
                        <td>${bookInstance?.book?.isbn}</td>
                        <td>${bookInstance?.book?.edition}</td>
                        <td>
                            <g:if test="${bookInstance.isReturnRequest == false}">
                                <g:if test="${bookInstance.isPending == true}">
                                    <a href="#" class="btn  btn-danger">Pending</a>
                                </g:if>
                                <g:else>
                                    <a href="#" class="btn  btn-success">Approved</a>
                                </g:else>
                            </g:if>
                            <g:else>
                                <a href="#" class="btn  btn-default">Return Request Send</a>
                            </g:else>

                        </td>
                        <td>
                            <div class="btn-group" role="group" aria-label="First group">
                                <g:link controller="front" action="show" class="btn  btn-info" params="${[bookID:bookInstance.id]}">Details</g:link>
                                <g:if test="${bookInstance.isReturnRequest == false}">
                                     <g:link controller="front" action="returnRequest" class="btn  btn-success" params="${[borrowID:bookInstance.id]}">Return Request</g:link>
                                </g:if>
                            </div>
                        </td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
    </div>
</div>

