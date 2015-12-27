<meta name="layout" content="my-layout">
<title><g:message code="publisherInstance" default="Dashboard"/> List</title>
<div class="row">
    <div class="panel panel-primary">
        <div class="panel-heading">
            Report
        </div>
        <div class="panel-body">
            <table class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>${message(code: 'name', default: 'Name')}</th>
                    <th>${message(code: 'copy', default: 'Copy')}</th>
                    <th>Borrow</th>
                    <th>Available</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${bookInstanceList}" status="i" var="bookInstance">
                    <tr class="text-center">
                        <td>${bookInstance?.name}</td>
                        <td>${bookInstance?.copy}</td>
                        <td>${bookInstance?.borrow}</td>
                        <td>${bookInstance?.copy - bookInstance?.borrow}</td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
    </div>
</div>

