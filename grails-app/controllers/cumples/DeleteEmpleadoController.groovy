package cumples

class DeleteEmpleadoController {

    def index() {
		def idEmp=params.idEmpleado;
		def emp=Empleado.get(idEmp as long);
		emp.delete();
		redirect(controller:'Mostrar', action:'index');
	}
}
