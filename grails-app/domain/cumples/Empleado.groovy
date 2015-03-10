package cumples

class Empleado {
	String nombre;
	String apellido;
	String dni;
	Date fechaNacimiento;
	
	static hasMany=[regalos: Regalo];
}
