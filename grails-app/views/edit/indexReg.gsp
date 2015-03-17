<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="${request.contextPath}/bootstrap/css/bootstrap.css">
		<script type="text/javascript" src="${request.contextPath}/js/jquery-2.1.3.js"></script>
		<script type="text/javascript" src="${request.contextPath}/bootstrap/js/bootstrap.js"></script>
		<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
		<link rel="stylesheet" href="${resource(dir:'css', file: 'bootstrap.css')}" />
        <link href="starter-template.css" rel="stylesheet"> 

		<title>Editar regalo</title>
	</head>
	

	<body>
		<div class="row"></div>
		<div class = "col-md-offset-2 col-md-8">
    		<nav class="navbar navbar-inverse navbar-fixed-top">
      			<div class="container">
        			<div class="navbar-header">
          				<ul class="nav navbar-nav">
          					<li><a href="http://localhost:8080/cumples/home/index">Home</a></li>
          				</ul>
        			</div>
        		
        			<div id="navbar" class="collapse navbar-collapse">  	
          				<ul class="nav navbar-nav">
          					<li><a href="http://localhost:8080/cumples/mostrar/index">Empleados</a></li>
            				<li><a href="http://localhost:8080/cumples/envioMail/index">Verificar precios</a></li>
          				</ul>
          				 <ul class="nav navbar-nav navbar-right">
          				 <li><a href="http://localhost:8080/cumples/empleados/index">Registrar empleados</a> </li>
                         <li> <a href="http://localhost:8080/cumples/admin/index">Registrar administrador</a> </li>
                         <sec:ifLoggedIn>
                            <li class="active">
                                <form name="logout" method="POST" action="${createLink(controller:'logout') }"> 

                                    <button type="submit" class="navbar-brand" style="border: 0 none;background-color:black">
                                       Logout
                                    </button>

                                </form>
                                </li>

                        </sec:ifLoggedIn>

                        </ul>
          			</div>
      			</div>
    		</nav><br><br><br>
    	</div>
    	
    	<div class="form-inline" style="width:100%; margin-left:2%; float:left;">
    		<input type="search" class="form-control" style="width:85%;" id="mySearch" placeholder="Ingresa el regalo que querés hacerle." required>
    		<input type="submit" class="btn btn-warning" data-loading-text="Loading..." value="Buscar Regalo" id="btnMySearch" onclick="iniciarBusqueda()" name="buscar" />
    	</div><br><br><br><br><br><br>
    	
    	<script type="text/javascript">
    	$("#mySearch").keyup(function(event){
        	if(event.keyCode == 13){
            	$("#btnMySearch").click();
            }
         });
        </script>
        
        <div id="respuesta_api_template" style="display:none;">
        	<div class="jumbotron">
        		<p style="text-align:center;">#TituloProd</p>
        		<img src="#Imagen" style="margin-left:342px;" class="img-circle"/>
        		<p style="text-align:center;">$ #PrecioProd</p>
        		<form method="post" action="editarRegaloC">
        			<input type="hidden" name="idEmpleado" value="#idEmpleado" >
        			<input type="hidden" name="idRegalo" value="#idRegalo" >
        			<input type="hidden" name="anioCumple" value="#AnioActual">
        			<input type="hidden" name="urlRegalo" value="#urlReg">
        			<input type="submit" class="btn btn-warning" value="Asignar Regalo" name="asignar" style="margin-left:326px;" />
        		</form>
    		</div><br>
		</div>

    	<div id="respuesta_api" style="display:none; width:60%; margin-left:260px;">
			<p style="text-align:center;">#TituloProd</p>
			<img src="#Imagen" style="margin-left:342px;" class="img-circle"/>
			<p style="text-align:center;">#PrecioProd</p>
			<form method="post" action="editarRegaloC">
    			<input type="hidden" name="idEmpleado" value="#idEmpleado" >
    			<input type="hidden" name="idRegalo" value="#idRegalo" >
    			<input type="hidden" name="anioCumple" value="#AnioActual">
    			<input type="hidden" name="urlRegalo" value="#urlReg">
    			<input type="submit" class="btn btn-warning" value="Asignar Regalo" name="asignar" style="margin-left:326px;" />
    		</form><br>
		</div>
	
    	<script type="text/javascript">
    		function iniciarBusqueda(){
        		var busqueda = $("#mySearch").val();
        		var promise = $.get("https://api.mercadolibre.com/sites/MLA/search", { q: busqueda, offset: 2 });
        		$("#respuesta_api").html("");
        		promise.done( mostrarResultado );
        		promise.fail( mostrarError );
        	}
        	function mostrarResultado( data ){
           		$.each( data.results, agregarResultado )
        	}

      		function agregarResultado(index, item) {
        		var str=$("#respuesta_api_template").html();
        		$("#spanLoading").attr('display', 'block' );
        		str = str.replace("#TituloProd", item.title);
        		str = str.replace("#Imagen", item.thumbnail);
        		str = str.replace("#PrecioProd", item.price);
        		str = str.replace("#idRegalo", ${idRegalo});
        		str = str.replace("#idEmpleado", ${EmpleadoReg});
        		str = str.replace("#AnioActual", (new Date().getYear() + 1900));
        		str = str.replace("#urlReg", item.id);
        		$("#respuesta_api").show();
        		$("#respuesta_api").append(str);
        	}

        	function mostrarError() {
            	$("#respuesta_api").html( "<li>Se produjo un error</li>" );
            } 
    	</script>
	</body>	
</html>