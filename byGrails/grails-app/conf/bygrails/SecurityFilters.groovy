package bygrails

class SecurityFilters {

    def filters = {
        all(controller:'*', action:'*') {
            before = {
                if (controllerName == "authentication" || controllerName == "front"){
                    return true
                }else {
                    if (session.user){
                        return true
                    }else{
                        redirect(controller: "authentication", action: "index")
                        return false;
                    }
                }

            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
