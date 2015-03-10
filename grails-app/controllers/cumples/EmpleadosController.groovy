package cumples

class EmpleadosController {

    def index() { 
		
	}
	
	def agregarC(){
		def nombre=params.nombre;
		def apellido=params.apellido;
		def dia=params.dia;
		def mes=params.mes;
		def anio=params.anio;
		
		Empleado e1= new Empleado(nombre: nombre, apellido: apellido, fechaNacimiento: Date.parse("dd-MM-yyyy", dia+"-"+mes+"-"+anio));
		e1.save(failOnError:true);
		redirect(action:'index');
		
	}
}
