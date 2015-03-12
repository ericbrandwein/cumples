package cumples
import java.util.List;
import java.lang.Object;
import groovy.json.JsonSlurper;


class EnvioMailController {
	def envioMailService;
	def index(){
		envioMailService.enviar();
	}
	
}
