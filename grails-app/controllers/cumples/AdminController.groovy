package cumples
import security.*
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_SUPERADMIN'])
class AdminController {

    def index() { 
		
	}
	
	def agregar() {
			def admin = new User(username: params.username, password: params.password);
			admin.save(failOnError:true);
			flash.message = "success";
			redirect(action:'index');
	}
}
