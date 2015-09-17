
<meta name="layout" content="my-layout"/>
<title><g:message code="categoryInstance" default="Category"/> Details</title>
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title"><g:message code="categoryInstance" default="Category"/> Details</h3>
    </div>
    <div class="panel-body">
        
        <g:if test="${categoryInstance?.name}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="name" default="Name" /></span>
                    
                    <span class="form-control" aria-labelledby="name-label"><g:fieldValue bean="${categoryInstance}" field="name"/></span>
                    
            </div>
        </g:if>
        
        <g:if test="${categoryInstance?.description}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="description" default="Description" /></span>
                    
                    <span class="form-control" aria-labelledby="description-label"><g:fieldValue bean="${categoryInstance}" field="description"/></span>
                    
            </div>
        </g:if>
        
        <g:if test="${categoryInstance?.book}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="book" default="Book" /></span>
                    
                    <g:each in="${categoryInstance.book}" var="b">
                        <span class="form-control" aria-labelledby="book-label"><g:link controller="book" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
                    </g:each>
                    
            </div>
        </g:if>
        
    </div>
</div>