<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Library Management</a>
            <ul class="nav navbar-nav">

                <g:form controller="front" action="index" method="get" class="navbar-form navbar-left" role="search" >
                    <div class="form-group">
                        <input type="hidden" name="colName" value="name"/>
                        <input type="text" name="colValue" class="form-control auto-complete-input" url="front/search" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-primary">Search</button>
                </g:form>
            </ul>
        </div>
    </div>
</nav>