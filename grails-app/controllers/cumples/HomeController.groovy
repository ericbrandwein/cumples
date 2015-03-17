package cumples
import java.util.List;
import security.*
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class HomeController {
	def homeService; //para usar el servicio
	
	def index() {
		[listaEmpleados: homeService.cumplenHoy((new Date().getDate()), (new Date().getMonth()+1))];
	}
	
	
}