<title>...:: Add <g:message code="memberInstance" default="Member"/> ::...</title>
<meta name="layout" content="my-layout"/>
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Create <g:message code="memberInstance" default="Member"/></h3>
    </div>
    <div class="panel-body">
        <g:form action="save"  controller="Member">
            <g:render template="form"/>
            <div class="form-action pull-right">
                <g:submitButton name="create" class="btn btn-primary" value="${message(code: 'create', default: 'Create')}" />
                <g:link action="index" controller="Member" class="btn  btn-danger">Cancel</g:link>
            </div>
        </g:form>
    </div>
</div>
