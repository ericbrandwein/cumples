<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="${request.contextPath}/bootstrap/css/bootstrap.css">
		<script type="text/javascript" src="${request.contextPath}/js/jquery-2.1.3.js"></script>
		<script type="text/javascript" src="${request.contextPath}/bootstrap/js/bootstrap.js"></script>
		<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
		<link rel="stylesheet" href="${resource(dir:'css', file: 'bootstrap.css')}" />
        <link href="starter-template.css" rel="stylesheet"> <!-- Custom styles for this template -->

		<title>Editar empleado</title>
	</head>
	

	<body>

	<div class="row"></div>
		<div class = "col-md-offset-2 col-md-8">
    <nav class="navbar navbar-inverse navbar-fixed-top">
    	<div class="container">
        	<div class="navbar-header">
        		<ul class="nav navbar-nav">
        			<li class="active"><a class="navbar-brand" href="#">Editar Empleado</a></li>
        		</ul>	
        	</div>

        	<div id="navbar" class="collapse navbar-collapse">
          		<ul class="nav navbar-nav">
            		<li><a href="http://localhost:8080/cumples/empleados/index">Registrar Empleado</a></li>
            	</ul>
            	
            	<ul class="nav navbar-nav">
            		<li><a href="http://localhost:8080/cumples/mostrar/index">Empleados</a></li>
          		</ul>
        	
          		<ul class="nav navbar-nav">
            		<li><a href="http://localhost:8080/cumples/envioMail/index">Verificar Precios</a></li>
          		</ul>
          	</div>
      	</div>
    </nav>
    <br>
    <br>
    <br>
    
    
        	<div class="starter-template">
        	<h1 style="text-align:center; color: #000;">Edite los datos del empleado</h1>
       
      	</div>
      	
      	<br>
      	     	   
		<div class="container" style="width:30%">
			<form class="form-inline" method="post" controller= "EditEmpleado" action="editarC">
 				<div class="form-group">
    				<input type="text" name="nombre" class="form-control" value="${nombre}" required>
  				</div><br><br>
	
				<div class="form-group">
	    			<input type="text" name="apellido" class="form-control" value="${apellido}" required>
  				</div><br><br>
  				
				<div class="form-group">
	    			<input type="number" name="dni" class="form-control" value="${dni}"  required>
	    			<input type="hidden" name="idEmpleado" value="${idEdEmp}" >
  				</div><br><br>
				
				<div class="form-group">
    				<label for="exampleInputName2" style="color: #050000;">Fecha de nacimiento:</label><br>
    				<div style="float: left;">
    				<input type="number" min="1" max="31" style="width: 55px;" name="dia"  class="form-control" value="${dia}" required/>
					<input type="number" min="1" max="12" style="width: 55px;" name="mes" class="form-control" value="${mes}" required/>
					<input type="number" min="1900" max="2000" style="width: 90px;" name="anio" class="form-control" value="${anio}" required/>
				</div>
				
  		</div><br><br>
	
				<div class="container" style="width:85%">
					<div><input type="submit"  class="btn btn-warning" value="Editar Empleado" name="ok" /></div>
				</div>
			</form>
		</div>
</div>
    
    </div>
    </div>
    
    
		</body>	
</html>