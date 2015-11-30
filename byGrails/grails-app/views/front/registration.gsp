<%--
  Created by IntelliJ IDEA.
  User: Touhid Mia
  Date: 18/09/2015
  Time: 10:09 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<title>...:: Member Registration ::...</title>
<meta name="layout" content="front">
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Member Registration</h3>
    </div>
    <div class="panel-body">
        <g:form action="registerMe"  controller="front">
            <g:render template="../member/form"/>
            <div class="form-action pull-right">
                <g:submitButton name="create" class="btn btn-primary" value="${message(code: 'create', default: 'Create')}" />
                <g:link action="index" controller="Member" class="btn  btn-danger">Cancel</g:link>
            </div>
        </g:form>
    </div>
</div>
