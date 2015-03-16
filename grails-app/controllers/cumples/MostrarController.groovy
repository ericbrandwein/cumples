package cumples
import java.util.List;
import security.*
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class MostrarController {

    def index() {
		[listaEmpleados: Empleado.list()];
    }
}
