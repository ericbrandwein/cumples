<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="${request.contextPath}/bootstrap/css/bootstrap.css">
		<script type="text/javascript" src="${request.contextPath}/js/jquery-2.1.3.js"></script>
		<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
		<script type="text/javascript" src="${request.contextPath}/bootstrap/js/bootstrap.js"></script>
	    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">   <!-- Bootstrap core CSS -->
		<link rel="stylesheet" href="${resource(dir:'css', file: 'bootstrap.css')}" />
      	<link href="starter-template.css" rel="stylesheet"> <!-- Custom styles for this template -->
 
		<title>Agregar empleado</title>
	</head>

	<body>
	
	<div class="row"></div>
	
		<div class = "col-md-offset-2 col-md-8">
    	<nav class="navbar navbar-inverse navbar-fixed-top">
      		<div class="container">
        		<div class="navbar-header">
          			<ul class="nav navbar-nav">
          				<li class="active"><a class="navbar-brand" href="#">Registrar Empleados</a></li>
          			</ul>
        		</div>
        		
        		<div id="navbar" class="collapse navbar-collapse">  	
          			<ul class="nav navbar-nav">
          				<li><a href="http://localhost:8080/cumples/mostrar/index">Empleados</a></li>
            			<li><a href="http://localhost:8080/cumples/envioMail/index">Verificar Precios</a></li>
          			</ul>
          		</div>
      		</div>
    	</nav><br><br>

    	<div class="starter-template">
        	<h1 style="text-align:center; color: #000;">Registre un empleado</h1>
        	<h3 style="text-align:center; color: #000;" class="lead"> Ingresa nombre, apellido y fecha de nacimiento del nuevo empleado.</h3>
      	</div><br>
      	     	   
		<div class="container" style="width:30%">
			<form class="form-inline" method="post" action="agregarC">
 				<div class="form-group">
    				<input type="text" name="nombre" id="txtNombre" class="form-control" onKeyUp="chText()" onKeyDown="chText()" placeholder="Nombre" required>
  				</div><br><br>
  				
				<div class="form-group">
	    			<input type="text" name="apellido" id="txtApellido" class="form-control" onKeyUp="chText()2" onKeyDown="chText()2" placeholder="Apellido"  required>
  				</div><br><br>
  			
  				<script type="text/javascript">
					function chText(){
    					var str=document.getElementById("txtNombre");
    					var regex=/[^a-z]/gi;
    					str.value=str.value.replace(regex ,"");
					}
					function chText2(){
    					var str=document.getElementById("txtApellido");
    					var regex=/[^a-z]/gi;
    					str.value=str.value.replace(regex ,"");
					}
				</script>
  				
				<div class="form-group">
	    			<input type="number" min="20000000" max="50000000" name="dni" id="txtDNI" class="form-control" placeholder="DNI"  required>
  				</div><br><br>
				
				<div class="form-group">
    				<label for="exampleInputName2" style="color: #050000;">Fecha de nacimiento:</label><br>
    				<div style="float: left; width: 250px; margin-left: -20px;">
    					<input type="number" min="1" max="31" style="width: 65px;" id="txtDia" name="dia"  class="form-control" placeholder="Día" required/>
						<input type="number" min="1" max="12" style="width: 75px;" id="txtMes" name="mes" class="form-control" placeholder="Mes" required/>
						<input type="number" min="1900" max="2000" style="width: 90px;" id="txtAnio" name="anio" class="form-control" placeholder="Año" required/>
					</div>
				
  				</div><br><br>
  			
				<div class="container" style="width:85%">
					<div><input type="submit"  class="btn btn-warning" value="Agregar Empleado" name="ok" onClick="validarDatos()" /></div>
				</div>
			</form>
		</div>
</div>

</body>
</html>