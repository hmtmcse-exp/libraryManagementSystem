package grails.tutorial.lms

class AuthenticationController {

    def index() {}

    def logout() {
        log.info "User agent: " + request.getHeader("User-Agent")
        session.invalidate()
        redirect(action: "index")
    }

    def doLogin() {
        session["user"] = "Admin"
    }

}
