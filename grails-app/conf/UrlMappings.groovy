class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "/"(controller:'Home', action: 'index')
        //"/cumples-de-hoy/$empresa"(controller:'Home', action:'index') // Cambiar el ACTION por uno que reciba empresa
        "500"(view:'/error')
		"/reporte_regalos_del_mes"(controller:"envioMail", action:"index")
		//"/cumples-de-hoy/$empresa"(controller: "home", action: "index")
	}
}
