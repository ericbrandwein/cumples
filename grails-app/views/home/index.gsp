<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="${request.contextPath}/bootstrap/css/bootstrap.css">
		<script type="text/javascript" src="${request.contextPath}/js/jquery-2.1.3.js"></script>
		<script type="text/javascript" src="${request.contextPath}/bootstrap/js/bootstrap.js"></script>
		<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
		<link rel="stylesheet" href="${resource(dir:'css', file: 'bootstrap.css')}" />
        <link href="starter-template.css" rel="stylesheet"> 

		<title>Cumpleaños del día</title>
	</head>
	
	<body>
	<div class="row"></div>
		<div class = "col-md-offset-2 col-md-8">
			<nav class="navbar navbar-inverse navbar-fixed-top">
      			<div class="container">
        			<div class="navbar-header">
          				<ul class="nav navbar-nav">
          					<li class="active"><a class="navbar-brand" href="http://localhost:8080/cumples/home/index">Home</a></li>
          				</ul>
        			</div>
        		
        			<div id="navbar" class="collapse navbar-collapse">  	
          				<ul class="nav navbar-nav">
          					<li><a href="http://localhost:8080/cumples/mostrar/index">Empleados</a></li>
            				<li><a href="http://localhost:8080/cumples/envioMail/index">Verificar precios</a></li>
          				</ul>
          				 <ul class="nav navbar-nav navbar-right">
          				 <li> <a href="http://localhost:8080/cumples/empleados/index">Registrar empleados</a> </li></ul>
          			</div>
      			</div>
    		</nav>
 		</div><br><br>
 			<div class="starter-template">
        		<h1 style="text-align:center; color: #000;"> <span class="label label-success">Cumpleaños del día</span></h1>
        		<h3 style="text-align:center; color: #000;" class="lead"> </h3>
        		<g:select class="form-control" style="width: 300px; margin: auto;" name="empresas"
				          from="${ empresas }"
				          noSelection="${['null':'Seleccione una empresa']}"
				          value="${ empresa }"
				          optionKey="id"
				          optionValue="nombre"
				          id="cambiarEmpresa"
				/>
      		</div><br>
		<div class="container" style="width:85%;">
			<g:each in="${listaEmpleados}"  var="empleado"> 
				<div class="jumbotron" style="border: 1px solid FFD700">
						<h2> ${empleado.nombre}&nbsp;${empleado.apellido}</h2>
						<h4>D.N.I.: ${empleado.dni}</h4>
						<h4> Fecha nacimiento: ${empleado.fechaNacimiento.date} / ${empleado.fechaNacimiento.month +1} / ${empleado.fechaNacimiento.year+1900}</h4>
						<h4> Empresa: ${ empleado.empresa.nombre }</h4>
						<g:form controller="SearchRegalo" method="post" action="index">
							<input type="hidden" name="idEmpleado" value="${empleado.id}" />
							<div style="float: left">
								<input class="btn btn-info" id="botonRegalo${empleado.id}" type="submit" value="Elegir Regalo" name="regaloOk" />&nbsp;&nbsp;
							</div>
						</g:form>
			 
						<div id="regalo-div${empleado.id}_template" style="display:none; margin-left: 520px; margin-top: -170px;">
							<p>Año: #anioCumpleEmp</p>
							<p>#TituloRegalo</p>
							<img src="#FotoRegalo" width="100px" height="100px" class="img-circle" />
						</div>
						<div id="regalo-div${empleado.id}" style="display:none; margin-left: 520px; margin-top: -155px; margin-bottom: -50px;">
						</div><br>
						<script type="text/javascript">
							<g:if test="${empleado.regalos.size()>0}">
								var idRegalo="${empleado.regalos.last().urlRegalo}";
								var promise=$.get("https://api.mercadolibre.com/items/"+idRegalo);
								promise.done( mostrarResultado );
				    			promise.fail( mostrarError );	

								function mostrarResultado(data){
									var str=$("#regalo-div${empleado.id}_template").html();
									str = str.replace("#anioCumpleEmp", ${empleado.regalos.last().anioCumple});
									str = str.replace("#TituloRegalo", data.title);
									str = str.replace("#FotoRegalo", data.pictures[0].url);
									$("#regalo-div${empleado.id}").show();
									$("#regalo-div${empleado.id}").append(str);
									$("#divEditRegalo${empleado.id}").show();
									$("#divDeleteRegalo${empleado.id}").show();
								}
								function mostrarError(){
									$("#regalo-div${empleado.id}").append("Error al obtener el producto");
								}
				
			    				<g:if test="${empleado.regalos.last().anioCumple ==(new Date().getYear()+1900)}">
			   						 // entrandoooo
									$("#botonRegalo${empleado.id}").hide();
								</g:if>
							</g:if>
						</script>
				</div>	
	</g:each>
</div>
	<script>
	$(document).ready(function() {
	    $('select.cambiarEmpresa').change(function(){
	        $.ajax({
	                type: 'get',
	                success: function(data){
	                	alert(a);
	                }
	         });
	    });
	});
	</script>
</body>
</html>