package cumples

class Empleado {
	String nombre;
	String apellido;
	Date fechaNacimiento;
	
	static hasMany=[regalos: Regalo];
}
