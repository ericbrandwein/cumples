package cumples
import security.*
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class EmpleadosController {
	def springSecurityService

    def index() { 
		
	}
	
	def agregarC(){
		if(Empleado.findByDni(params.dni)==null){
			def usuario = springSecurityService.currentUser
			def nombre=params.nombre
			def apellido=params.apellido
			def dni=params.dni
			def dia=params.dia
			def mes=params.mes
			def anio=params.anio

			Empleado e1= new Empleado(nombre: nombre, apellido: apellido, dni: dni, fechaNacimiento: Date.parse("dd-MM-yyyy", dia+"-"+mes+"-"+anio));
			e1.save(failOnError:true);
			usuario.empresa.addToEmpleados(e1)
			flash.message="success";
			redirect(action:'index');
		}
		else{
			flash.message="error";
			redirect(action:'index')
		}
	}
}
