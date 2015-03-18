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
			println params.empresa
			def empresa=Empresa.findById(params.empresa)
			/*if(empresa==null){
				empresa= new Empresa(nombre:params.empresa)
				empresa.save()
			}*/
			def admin = new User(username: params.username, password: params.password)
			admin.save()
			empresa.addToAdministradores(admin)
			flash.message = "success"
			redirect(action:'index')
	}
}
