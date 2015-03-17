package cumples

import grails.transaction.Transactional
import java.util.List
import java.lang.Object
import groovy.json.JsonSlurper

@Transactional
class EnvioMailService {
	def enviar(empresa) {
		def acumulador=0
		def slurper = new JsonSlurper()
		def mesActual= new Date().getMonth()+1
		Empleado.list().findAll{
			it.fechaNacimiento.getMonth()+1==mesActual &&
			it.regalos.size()>0 &&
			it.empresa==empresa
		}.each{
			def url=new URL("https://api.mercadolibre.com/items/"+it.regalos.last().urlRegalo)
			def stringdejson=url.getText(requestProperties: [Accept: 'application/json'])
			def result = slurper.parseText(stringdejson)
			acumulador += result.price
		}
		//mandar mail pasandole acumulador
		sendMail {
			to "candelaria.campos@mercadolibre.com", "ken.weinberg@mercadolibre.com","eric.brandwein@mercadolibre.com"
			subject "Verificación de Precios del Mes N°"+mesActual+" de "+empresa.nombre+"."
			body 'El total a gastar en el mes actual, en regalos es: $'+acumulador+'.'
	  	}
	}
}
