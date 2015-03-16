package cumples
import security.*
//import grails.rest.Resource

//@Resource(uri= "/empleadosLista")
class Empleado {
	String nombre
	String apellido
	String dni
	Date fechaNacimiento
	
	static belongsTo=[empresa:Empresa]
	static hasMany=[regalos: Regalo]

	static constraints={
		empresa nullable:true
		regalos nullable:true
	}
}
