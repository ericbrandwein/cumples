package security
import cumples.*

class Empresa {
	String nombre
	
	static hasMany=[administradores: User,empleados:Empleado]
}
