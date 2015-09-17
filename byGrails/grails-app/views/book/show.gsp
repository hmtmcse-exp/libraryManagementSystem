
<meta name="layout" content="my-layout"/>
<title><g:message code="bookInstance" default="Book"/> Details</title>
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title"><g:message code="bookInstance" default="Book"/> Details</h3>
    </div>
    <div class="panel-body">
        
        <g:if test="${bookInstance?.name}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="name" default="Name" /></span>
                    
                    <span class="form-control" aria-labelledby="name-label"><g:fieldValue bean="${bookInstance}" field="name"/></span>
                    
            </div>
        </g:if>
        
        <g:if test="${bookInstance?.isbn}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="isbn" default="Isbn" /></span>
                    
                    <span class="form-control" aria-labelledby="isbn-label"><g:fieldValue bean="${bookInstance}" field="isbn"/></span>
                    
            </div>
        </g:if>
        
        <g:if test="${bookInstance?.copy}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="copy" default="Copy" /></span>
                    
                    <span class="form-control" aria-labelledby="copy-label"><g:fieldValue bean="${bookInstance}" field="copy"/></span>
                    
            </div>
        </g:if>
        
        <g:if test="${bookInstance?.price}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="price" default="Price" /></span>
                    
                    <span class="form-control" aria-labelledby="price-label"><g:fieldValue bean="${bookInstance}" field="price"/></span>
                    
            </div>
        </g:if>
        
        <g:if test="${bookInstance?.edition}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="edition" default="Edition" /></span>
                    
                    <span class="form-control" aria-labelledby="edition-label"><g:fieldValue bean="${bookInstance}" field="edition"/></span>
                    
            </div>
        </g:if>
        
        <g:if test="${bookInstance?.description}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="description" default="Description" /></span>
                    
                    <span class="form-control" aria-labelledby="description-label"><g:fieldValue bean="${bookInstance}" field="description"/></span>
                    
            </div>
        </g:if>
        
        <g:if test="${bookInstance?.author}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="author" default="Author" /></span>
                    
                    <span class="form-control" aria-labelledby="author-label"><g:link controller="author" action="show" id="${bookInstance?.author?.id}">${bookInstance?.author?.encodeAsHTML()}</g:link></span>
                    
            </div>
        </g:if>
        
        <g:if test="${bookInstance?.category}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="category" default="Category" /></span>
                    
                    <span class="form-control" aria-labelledby="category-label"><g:link controller="category" action="show" id="${bookInstance?.category?.id}">${bookInstance?.category?.encodeAsHTML()}</g:link></span>
                    
            </div>
        </g:if>
        
        <g:if test="${bookInstance?.code}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="code" default="Code" /></span>
                    
                    <span class="form-control" aria-labelledby="code-label"><g:fieldValue bean="${bookInstance}" field="code"/></span>
                    
            </div>
        </g:if>
        
        <g:if test="${bookInstance?.dateCreated}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="dateCreated" default="Date Created" /></span>
                    
                    <span class="form-control" aria-labelledby="dateCreated-label"><g:formatDate date="${bookInstance?.dateCreated}" /></span>
                    
            </div>
        </g:if>
        
        <g:if test="${bookInstance?.lastUpdated}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="lastUpdated" default="Last Updated" /></span>
                    
                    <span class="form-control" aria-labelledby="lastUpdated-label"><g:formatDate date="${bookInstance?.lastUpdated}" /></span>
                    
            </div>
        </g:if>
        
        <g:if test="${bookInstance?.publisher}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="publisher" default="Publisher" /></span>
                    
                    <span class="form-control" aria-labelledby="publisher-label"><g:link controller="publisher" action="show" id="${bookInstance?.publisher?.id}">${bookInstance?.publisher?.encodeAsHTML()}</g:link></span>
                    
            </div>
        </g:if>
        
    </div>
</div>