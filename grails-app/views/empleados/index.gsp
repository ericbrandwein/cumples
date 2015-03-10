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
    	</nav>

	<br>
	<br>

    	<div class="starter-template">
        	<h1 style="text-align:center; color: #000;">Registre un empleado</h1>
        	<h3 style="text-align:center; color: #000;" class="lead"> Ingresa nombre, apellido y fecha de nacimiento del nuevo empleado.</h3>
      	</div>
      	
      	<br>
      	     	   
		<div class="container" style="width:30%">
			<form class="form-inline" method="post" action="agregarC">
 				<div class="form-group">
    				<input type="text" name="nombre" class="form-control" placeholder="Nombre" required>
  				</div><br><br>
	
				<div class="form-group">
	    			<input type="text" name="apellido" class="form-control" placeholder="Apellido"  required>
  				</div><br><br>
			
				<div class="form-group">
    				<label for="exampleInputName2" style="color: #050000;">Fecha de nacimiento:</label><br>
    				<div style="float: left;">
    				<input type="text" style="width: 55px;" name="dia"  class="form-control" placeholder="Día" required/>
					<input type="text" style="width: 55px;" name="mes" class="form-control" placeholder="Mes" required/>
					<input type="text" style="width: 90px;" name="anio" class="form-control" placeholder="Año" required/>
				</div>
				
  		</div><br><br>
	
				<div class="container" style="width:85%">
					<div><input type="submit"  class="btn btn-warning" value="Agregar Empleado" name="ok" /></div>
				</div>
			</form>
		</div>
</div>
</body>
</html>