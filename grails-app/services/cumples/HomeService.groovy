package cumples
import security.*

import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Transactional
class HomeService {

    def serviceMethod() {}
	
	def cumplenHoy(dia, mes){
		def lista = Empleado.list().findAll{
			it.fechaNacimiento.getMonth()+1==mes &&
			it.fechaNacimiento.getDate()==dia
		}
		/*def listaEmpleados= []
		for(int i=0; i<=(lista.size())-1; i++){
			if ((lista[i].fechaNacimiento.getMonth()+1)==mes){
				if ((lista[i].fechaNacimiento.getDate())==dia){
					listaEmpleados.add(lista[i])
				}
			}
		}*/
		return lista
	}
	
	def cumplenHoy(dia, mes, empresa){
		def lista = Empleado.list().findAll{
			it.fechaNacimiento.getMonth()+1==mes &&
			it.fechaNacimiento.getDate()==dia &&
			it.empresa.nombre==empresa			
		}
		return lista
	}
	
}
