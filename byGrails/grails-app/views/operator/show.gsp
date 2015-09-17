
<meta name="layout" content="my-layout"/>
<title><g:message code="operatorInstance" default="Operator"/> Details</title>
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title"><g:message code="operatorInstance" default="Operator"/> Details</h3>
    </div>
    <div class="panel-body">
        
        <g:if test="${operatorInstance?.name}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="name" default="Name" /></span>
                    
                    <span class="form-control" aria-labelledby="name-label"><g:fieldValue bean="${operatorInstance}" field="name"/></span>
                    
            </div>
        </g:if>
        
        <g:if test="${operatorInstance?.email}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="email" default="Email" /></span>
                    
                    <span class="form-control" aria-labelledby="email-label"><g:fieldValue bean="${operatorInstance}" field="email"/></span>
                    
            </div>
        </g:if>
        
        <g:if test="${operatorInstance?.password}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="password" default="Password" /></span>
                    
                    <span class="form-control" aria-labelledby="password-label"><g:fieldValue bean="${operatorInstance}" field="password"/></span>
                    
            </div>
        </g:if>
        
        <g:if test="${operatorInstance?.dateCreated}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="dateCreated" default="Date Created" /></span>
                    
                    <span class="form-control" aria-labelledby="dateCreated-label"><g:formatDate date="${operatorInstance?.dateCreated}" /></span>
                    
            </div>
        </g:if>
        
        <g:if test="${operatorInstance?.lastUpdated}">
            <div class="input-group">
                <span class="input-group-addon"><g:message code="lastUpdated" default="Last Updated" /></span>
                    
                    <span class="form-control" aria-labelledby="lastUpdated-label"><g:formatDate date="${operatorInstance?.lastUpdated}" /></span>
                    
            </div>
        </g:if>
        
    </div>
</div>