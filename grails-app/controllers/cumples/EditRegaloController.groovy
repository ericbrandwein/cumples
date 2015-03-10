package cumples

class EditRegaloController {

	    def index() {			
			//def idEmp=params.idEmpleado;
			//def emp=Empleado.get(idEmp as long);
			//[nombre:emp.nombre, apellido:emp.apellido, dni:emp.dni, dia:emp.fechaNacimiento.getDay(), mes:(emp.fechaNacimiento.getMonth()+1), anio:(emp.fechaNacimiento.getYear()+1900), idEdEmp: emp.id, regalos: emp.regalos];
			
			def idReg=params.idRegalo;
			def reg=Regalo.get(idReg as long);
			[idRegalo:idReg, EmpleadoReg:reg.emp.id];
		 }
		
		def editarRegaloC(){ 
			//def idEmpleado=params.idEmpleado;
			//def emp=Empleado.get(idEmpleado as long);
			//emp.regalos=params.regalos.last();
			
			def idRegalo=params.idRegalo;
			def reg=Regalo.get(idRegalo as long);
			reg.urlRegalo=params.urlRegalo;
			reg.anioCumple=Integer.parseInt(params.anioCumple);
			reg.emp=Empleado.get(params.idEmpleado as long);
			reg.save(failOnError:true);
			redirect(controller:'Mostrar', action:'index');
			
		}
}
