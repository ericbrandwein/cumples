
package cumples
import cumples.Regalo;

class SearchRegaloController {

    def index() {
		def idEmp = params.idEmpleado;
		[idEmp: idEmp];
	}
	
	def asignarRegalo(){
		def url = params.urlRegalo;
		def anio = params.anioCumple;
		def empleado = Empleado.get(params.id as long);
		Regalo reg = new Regalo(urlRegalo:url,anioCumple:anio,emp:empleado);
		reg.save(failOnError:true);
		redirect(controller:'Mostrar', action:'index');
		
	}
}
