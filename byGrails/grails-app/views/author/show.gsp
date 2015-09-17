
<meta name="layout" content="my-layout"/>
<title><g:message code="authorInstance" default="Author"/> Details</title>
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title"><g:message code="authorInstance" default="Author"/> Details</h3>
    </div>
    <div class="panel-body">
        
        <g:if test="${authorInstance?.name}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="name" default="Name" /></span>
                    
                    <span class="form-control" aria-labelledby="name-label"><g:fieldValue bean="${authorInstance}" field="name"/></span>
                    
            </div>
        </g:if>
        
        <g:if test="${authorInstance?.dob}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="dob" default="Dob" /></span>
                    
                    <span class="form-control" aria-labelledby="dob-label"><g:formatDate date="${authorInstance?.dob}" /></span>
                    
            </div>
        </g:if>
        
        <g:if test="${authorInstance?.bio}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="bio" default="Bio" /></span>
                    
                    <span class="form-control" aria-labelledby="bio-label"><g:fieldValue bean="${authorInstance}" field="bio"/></span>
                    
            </div>
        </g:if>
        
        <g:if test="${authorInstance?.book}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="book" default="Book" /></span>
                    
                    <g:each in="${authorInstance.book}" var="b">
                        <span class="form-control" aria-labelledby="book-label"><g:link controller="book" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
                    </g:each>
                    
            </div>
        </g:if>
        
        <g:if test="${authorInstance?.dateCreated}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="dateCreated" default="Date Created" /></span>
                    
                    <span class="form-control" aria-labelledby="dateCreated-label"><g:formatDate date="${authorInstance?.dateCreated}" /></span>
                    
            </div>
        </g:if>
        
        <g:if test="${authorInstance?.lastUpdated}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="lastUpdated" default="Last Updated" /></span>
                    
                    <span class="form-control" aria-labelledby="lastUpdated-label"><g:formatDate date="${authorInstance?.lastUpdated}" /></span>
                    
            </div>
        </g:if>
        
    </div>
</div>