package cumples
import java.util.List;

class MostrarController {

    def index() {
		[listaEmpleados: Empleado.list()];
    }
}
