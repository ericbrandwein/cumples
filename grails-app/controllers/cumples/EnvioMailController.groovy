package cumples
import java.util.List;
import java.lang.Object;
import groovy.json.JsonSlurper;
import security.*
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class EnvioMailController {
	def envioMailService;
	def index(){
		envioMailService.enviar();
	}
	
}
