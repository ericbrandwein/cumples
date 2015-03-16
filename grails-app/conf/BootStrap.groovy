import java.util.Date;
import security.*

class BootStrap {


    def init = { servletContext ->
    	def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true) 
    	def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
		def testUser = new User(username: 'me', password: 'password')
		def empresa1= new Empresa(nombre:"meli").addToAdministradores(testUser)

		def testUser2 = new User(username: 'me2', password: 'password')
		def empresa2= new Empresa(nombre:"amazon").addToAdministradores(testUser2)
		testUser2.save(flush: true)
		testUser.save(flush: true)
		empresa1.save(flush:true)
		empresa2.save(flush:true)
		UserRole.create (testUser, adminRole, true)
		UserRole.create (testUser2, adminRole, true)
    }
    
    def destroy = {
    }
}
