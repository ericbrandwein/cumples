package cumples
import security.*

class Empresa {
	String nombre
	
	static hasMany=[administradores: User,empleados:Empleado]
}
