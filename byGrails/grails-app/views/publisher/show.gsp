
<meta name="layout" content="my-layout"/>
<title><g:message code="publisherInstance" default="Publisher"/> Details</title>
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title"><g:message code="publisherInstance" default="Publisher"/> Details</h3>
    </div>
    <div class="panel-body">
        
        <g:if test="${publisherInstance?.name}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="name" default="Name" /></span>
                    
                    <span class="form-control" aria-labelledby="name-label"><g:fieldValue bean="${publisherInstance}" field="name"/></span>
                    
            </div>
        </g:if>
        
        <g:if test="${publisherInstance?.address}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="address" default="Address" /></span>
                    
                    <span class="form-control" aria-labelledby="address-label"><g:fieldValue bean="${publisherInstance}" field="address"/></span>
                    
            </div>
        </g:if>
        
        <g:if test="${publisherInstance?.book}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="book" default="Book" /></span>
                    
                    <g:each in="${publisherInstance.book}" var="b">
                        <span class="form-control" aria-labelledby="book-label"><g:link controller="book" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
                    </g:each>
                    
            </div>
        </g:if>
        
        <g:if test="${publisherInstance?.dateCreated}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="dateCreated" default="Date Created" /></span>
                    
                    <span class="form-control" aria-labelledby="dateCreated-label"><g:formatDate date="${publisherInstance?.dateCreated}" /></span>
                    
            </div>
        </g:if>
        
        <g:if test="${publisherInstance?.lastUpdated}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="lastUpdated" default="Last Updated" /></span>
                    
                    <span class="form-control" aria-labelledby="lastUpdated-label"><g:formatDate date="${publisherInstance?.lastUpdated}" /></span>
                    
            </div>
        </g:if>
        
    </div>
</div>