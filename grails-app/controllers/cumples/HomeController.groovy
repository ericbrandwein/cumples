package cumples
import java.util.List;

class HomeController {
	
	
	def index() {
		[listaEmpleados: Empleado.list()];
	}
	
	
}
