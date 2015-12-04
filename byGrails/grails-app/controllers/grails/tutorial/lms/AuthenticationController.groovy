package grails.tutorial.lms

class AuthenticationController {

    def index() {}

    def logout() {
        log.info "User agent: " + request.getHeader("User-Agent")
        session.invalidate()
        redirect(action: "index")
    }

    def doLogin() {
        String email = params.email?:null
        String password = params.password?:null

        if (email != null && password != null){
            if (email.equals("admin@library.com") && password.equals("admin")){
                session["user"] = "Admin"
                redirect(controller: "dashboard");
            }else {
                flash.message = [info: "Invalid Username or password", success: false]
                redirect(controller: "authentication", action: "index")
            }

        }else{
            flash.message = [info: "Invalid Username or password", success: false]
            redirect(controller: "authentication", action: "index")
        }

    }

}
