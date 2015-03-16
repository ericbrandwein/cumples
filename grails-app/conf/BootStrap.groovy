import java.util.Date;
import security.*
import cumples.*

class BootStrap {


    def init = { servletContext ->
    	def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true) 
    	def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

		def testUser = new User(username: 'me', password: 'password')
		def testUser2 = new User(username: 'me2', password: 'password')
		testUser.save(flush: true)
		testUser2.save(flush: true)

		UserRole.create (testUser, adminRole, true)
		UserRole.create (testUser2, adminRole, true)

		def empresa1= new Empresa(nombre:"meli").addToAdministradores(testUser)
		empresa1.save(flush: true)
		def empresa2= new Empresa(nombre:"amazon").addToAdministradores(testUser2)
		empresa2.save(flush: true)

		def fecha=new Date()
		fecha.setDate(16)
		fecha.setMonth(2)
		fecha.setYear(1998)

		def empleado1 = new Empleado(nombre: 'emp1', apellido: 'ape1', dni: '23314323', fechaNacimiento: fecha )
		def regalo1 = new Regalo(urlRegalo: "aa", anioCumple: 2015)
		regalo1.save(flush: true)
		empleado1.addToRegalos(regalo1)
		empleado1.save(flush: true, failOnError: true)
   		empresa1.addToEmpleados(empleado1)
   		empresa1.save(flush: true)
   		empresa2.addToEmpleados(empleado1)
   		empresa2.save(flush: true)
		
		
    }
    
    def destroy = {
    }
}
