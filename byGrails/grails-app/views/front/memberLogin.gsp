<meta name="layout" content="login">
<div id="global-wrapper">
    <div id="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-4 col-md-offset-4">
                    <h1 class="text-center login-title">Login Here</h1>
                    <div class="account-wall">
                        <asset:image src="logo.png" class="profile-img"/>
                        <g:form controller="front" action="loginMe" class="form-signin">
                            <input type="text" name="roll" class="form-control" placeholder="University Identification" required autofocus>
                            <input type="password" name="password" class="form-control" placeholder="Password" required>
                            <button class="btn btn-lg btn-primary btn-block" name="doLogin" type="submit">Login</button>
                        </g:form>
                    </div>
                    <g:link controller="front" action="registration" class="text-center new-account">Registration</g:link>
                </div>
            </div>
        </div>
    </div>
</div>