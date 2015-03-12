package cumples

import grails.transaction.Transactional
import java.util.List;
import java.lang.Object;
import groovy.json.JsonSlurper;

@Transactional
class EnvioMailService {
	def enviar() {
		def acumulador=0;
		def listaEmpleados= Empleado.list();
		def mesActual= (new Date().getMonth()+1);
		for (int i=0; i<= listaEmpleados.size()-1;i++){
			if ((listaEmpleados[i].fechaNacimiento.getMonth()+1)==mesActual){
				if(listaEmpleados[i].regalos.size()>0){
					def url=new URL("https://api.mercadolibre.com/items/"+listaEmpleados[i].regalos.last().urlRegalo);
					def stringdejson=url.getText(requestProperties: [Accept: 'application/json']);
					def slurper = new JsonSlurper();
					def result = slurper.parseText(stringdejson);
					acumulador= acumulador + result.price;
				}
			}
		}
		//mandar mail pasandole acumulador
		sendMail {
			to "candelaria.campos@mercadolibre.com", "ken.weinberg@mercadolibre.com"
			subject "Verificación de Precios del Mes N°"+mesActual+"."
			body 'El total a gastar en el mes actual, en regalos es: $'+acumulador+'.'
	  }
	}
}
