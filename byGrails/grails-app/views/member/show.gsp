
<meta name="layout" content="my-layout"/>
<title><g:message code="memberInstance" default="Member"/> Details</title>
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title"><g:message code="memberInstance" default="Member"/> Details</h3>
    </div>
    <div class="panel-body">
        
        <g:if test="${memberInstance?.firstName}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="firstName" default="First Name" /></span>
                    
                    <span class="form-control" aria-labelledby="firstName-label"><g:fieldValue bean="${memberInstance}" field="firstName"/></span>
                    
            </div>
        </g:if>
        
        <g:if test="${memberInstance?.lastName}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="lastName" default="Last Name" /></span>
                    
                    <span class="form-control" aria-labelledby="lastName-label"><g:fieldValue bean="${memberInstance}" field="lastName"/></span>
                    
            </div>
        </g:if>
        
        <g:if test="${memberInstance?.gender}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="gender" default="Gender" /></span>
                    
                    <span class="form-control" aria-labelledby="gender-label"><g:fieldValue bean="${memberInstance}" field="gender"/></span>
                    
            </div>
        </g:if>
        
        <g:if test="${memberInstance?.email}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="email" default="Email" /></span>
                    
                    <span class="form-control" aria-labelledby="email-label"><g:fieldValue bean="${memberInstance}" field="email"/></span>
                    
            </div>
        </g:if>
        
        <g:if test="${memberInstance?.mobile}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="mobile" default="Mobile" /></span>
                    
                    <span class="form-control" aria-labelledby="mobile-label"><g:fieldValue bean="${memberInstance}" field="mobile"/></span>
                    
            </div>
        </g:if>
        
        <g:if test="${memberInstance?.address}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="address" default="Address" /></span>
                    
                    <span class="form-control" aria-labelledby="address-label"><g:fieldValue bean="${memberInstance}" field="address"/></span>
                    
            </div>
        </g:if>
        
        <g:if test="${memberInstance?.dateCreated}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="dateCreated" default="Date Created" /></span>
                    
                    <span class="form-control" aria-labelledby="dateCreated-label"><g:formatDate date="${memberInstance?.dateCreated}" /></span>
                    
            </div>
        </g:if>
        
        <g:if test="${memberInstance?.lastUpdated}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="lastUpdated" default="Last Updated" /></span>
                    
                    <span class="form-control" aria-labelledby="lastUpdated-label"><g:formatDate date="${memberInstance?.lastUpdated}" /></span>
                    
            </div>
        </g:if>
        
    </div>
</div>