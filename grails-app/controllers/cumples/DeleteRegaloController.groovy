package cumples

class DeleteRegaloController {

    def index() {
		def idRegalo=params.idRegalo;
		def regalo=Regalo.get(idRegalo as long);
		regalo.delete(failOnError:true);
		redirect(controller:'Mostrar', action:'index');
	}
}
