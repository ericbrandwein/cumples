package cumples

class EmpleadosController {

    def index() { 
		
	}
	
	def agregarC(){
		if(Empleado.findByDni(params.dni)==null){
			def nombre=params.nombre;
			def apellido=params.apellido;
			def dni=params.dni;
			def dia=params.dia;
			def mes=params.mes;
			def anio=params.anio;
		
			Empleado e1= new Empleado(nombre: nombre, apellido: apellido, dni: dni, fechaNacimiento: Date.parse("dd-MM-yyyy", dia+"-"+mes+"-"+anio));
			e1.save(failOnError:true);
			redirect(action:'index');
		}
		else{
			redirect(action:'index');
		}
		
	}
}
