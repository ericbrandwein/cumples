class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller:'Home', action:'/index')
        "500"(view:'/error')
		"/reporte_regalos_del_mes"(controller:"envioMail", action:"index")
		
	}
}
