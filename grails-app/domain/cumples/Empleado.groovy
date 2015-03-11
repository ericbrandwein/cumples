package cumples
import grails.rest.Resource
@Resource(uri= "/avmEmpleados")

	class Empleado {
	String nombre;
	String apellido;
	String dni;
	Date fechaNacimiento;
	
	
	static hasMany=[regalos: Regalo];
}
