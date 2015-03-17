package cumples
import java.util.List;
import security.*
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class HomeController {
	def homeService; //para usar el servicio
	
	def index() {
		[empresas: Empresa.list(), listaEmpleados: homeService.cumplenHoy((new Date().getDate()), (new Date().getMonth()+1))];
	}

	def listaEmpleadosEmpresa(){
		[listaEmpleados: homeService.cumplenHoy((new Date().getDate()), (new Date().getMonth()+1)), empresa: params.empresa];
	}
	
	
}