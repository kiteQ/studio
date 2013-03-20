class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
			}
			
	
		}
		
		//"/login/$action?"(controller: "login")
		"/logout/$action?"(controller: "logout")
		
		"500"(view:'/error')
		
		
	}
}
