class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/manage"(controller:"dashboard")
        "/"(controller:"front")
        "500"(view:'/error')
	}
}
