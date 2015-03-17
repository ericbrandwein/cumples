class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/cumples-de-hoy/$empresa"(controller:'Home', action:'index')
        "500"(view:'/error')
		"/reporte_regalos_del_mes"(controller:"envioMail", action:"index")
		//"/cumples-de-hoy/$empresa"(controller: "home", action: "index")
	}
}
