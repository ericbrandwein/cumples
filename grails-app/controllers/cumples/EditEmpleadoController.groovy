package cumples

class EditEmpleadoController {

    def index() {
		def idEmp=params.idEmpleado;
		def emp=Empleado.get(idEmp as long);
		[nombre:emp.nombre, apellido:emp.apellido, dni:emp.dni, dia:emp.fechaNacimiento.getDay(), mes:(emp.fechaNacimiento.getMonth()+1), anio:(emp.fechaNacimiento.getYear()+1900), idEdEmp: emp.id];
		
	}

	def editarC(){
		
		def idEmpleado=params.idEmpleado;
		def emp=Empleado.get(idEmpleado as long);
		emp.nombre=params.nombre;
		emp.apellido=params.apellido;
		emp.dni=params.dni;
		emp.fechaNacimiento.setDate(Integer.parseInt(params.dia));
		emp.fechaNacimiento.setMonth(Integer.parseInt((params.mes))-1);
		emp.fechaNacimiento.setYear(Integer.parseInt((params.anio))-1900);
		emp.save(failOnError:true);
		redirect(controller:'Mostrar', action:'index');

		}
	
	
	
	}