package cumples
import security.*

import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Transactional
class HomeService {

    def serviceMethod() {}
	
	def cumplenHoy(dia, mes){
		def lista = Empleado.list()
		def listaEmpleados= []
		for(int i=0; i<=(lista.size())-1; i++){
			if ((lista[i].fechaNacimiento.getMonth()+1)==mes){
				if ((lista[i].fechaNacimiento.getDate())==dia){
					listaEmpleados.add(lista[i])
				}
			}
		}
		return listaEmpleados
	}
	
	def cumplenHoy(dia, mes, empresa){
		def lista = cumplenHoy(dia, mes)
		lista.findByEmpresa{ it.empresa == empresa }
		return lista
	}
	
}
