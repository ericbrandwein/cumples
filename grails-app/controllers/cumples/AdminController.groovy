package cumples
import security.*
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_SUPERADMIN'])
class AdminController {

    def index() { 
		def lista = Empresa.list()
		[lista:lista]
	}
	
	def agregar() {
			def empresa=Empresa.findByNombre(params.empresa)
			if(empresa==null){
				empresa= new Empresa(nombre:params.empresa)
			}
			def admin = new User(username: params.username, password: params.password)
			empresa.addToAdministradores(admin)
			admin.save(failOnError:true)
			flash.message = "success"
			redirect(action:'index')
	}
}
