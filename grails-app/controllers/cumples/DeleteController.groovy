package cumples
import security.*
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class DeleteController {

    def deleteRegalo() {
		def idRegalo=params.idRegalo;
		def regalo=Regalo.get(idRegalo as long);
		regalo.delete(failOnError:true);
		redirect(controller:'Mostrar', action:'index');
	}
	def deleteEmpleado(){
		def idEmp=params.idEmpleado;
		def emp=Empleado.get(idEmp as long);
		emp.delete(failOnError:true);
		redirect(controller:'Mostrar', action:'index');
	}
}
