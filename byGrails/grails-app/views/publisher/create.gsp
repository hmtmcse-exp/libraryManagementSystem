<title>...:: Add <g:message code="publisherInstance" default="Publisher"/> ::...</title>
<meta name="layout" content="my-layout"/>
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Create <g:message code="publisherInstance" default="Publisher"/></h3>
    </div>
    <div class="panel-body">
        <g:form action="save"  controller="Publisher">
            <g:render template="form"/>
            <div class="form-action pull-right">
                <g:submitButton name="create" class="btn btn-primary" value="${message(code: 'create', default: 'Create')}" />
                <g:link action="index" controller="Publisher" class="btn  btn-danger">Cancel</g:link>
            </div>
        </g:form>
    </div>
</div>
