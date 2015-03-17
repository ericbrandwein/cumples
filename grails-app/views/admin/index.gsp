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
 		
		<title>Agregar Administrador</title>
	</head>

	<body>
		<div class="row"></div>
		<div class = "col-md-offset-2 col-md-8">
			<nav class="navbar navbar-inverse navbar-fixed-top">
      			<div class="container">
        			<div class="navbar-header">
          				<ul class="nav navbar-nav">
          					<li><a  href="http://localhost:8080/cumples/home/index">Home</a></li>
          				</ul>
        			</div>
        		
        			<div id="navbar" class="collapse navbar-collapse">  	
          				<ul class="nav navbar-nav">
          					<li><a href="http://localhost:8080/cumples/mostrar/index">Empleados</a></li>
            				<li><a href="http://localhost:8080/cumples/envioMail/index">Verificar precios</a></li>
          				</ul>
          				 <ul class="nav navbar-nav navbar-right">
          				 <li class="active"> <a class="navbar-brand" href="http://localhost:8080/cumples/empleados/index">Registrar empleados</a> </li></ul>
                  <ul class="nav navbar-nav navbar-right">
                  <sec:ifLoggedIn>
                    <li class="active">
                      <form name="logout" method="POST" action="${createLink(controller:'logout') }"> 

                  <button type="submit" class="navbar-brand" style="border: 0 none;background-color:black">
                     Logout
                  </button>

                      </form>
                      </li>

                  </sec:ifLoggedIn></ul>
          			</div>
      			</div>
    		</nav><br><br>
    		
    		<div class="starter-template">
        		<h1 style="text-align:center; color: #000;"><span class="label label-success">Registre un empleado</span></h1>
        		<h3 style="text-align:center; color: #000;" class="lead"><span class="label label-success">Ingresa nombre, apellido y fecha de nacimiento del nuevo empleado.</span></h3>
      		</div><br>
      		
      		<div class="container" style="width:30%">
				<g:form class="form-inline" method="post" controller="admin" action="agregar">
 					<div class="form-group">
    					<input type="text" name="username" id="username" class="form-control" onKeyUp="chText()" onKeyDown="chText()" placeholder="Username" required>
  					</div><br><br>
  					
  					<div class="form-group">
	    				<input type="password" name="password" id="password" class="form-control" onKeyUp="chText()2" onKeyDown="chText()2" placeholder="Password"  required>
  					</div><br><br>
					
					<div class="container" style="width:85%">
						<div><input type="submit"  class="btn btn-warning" value="Agregar Administrador" name="ok" onClick="validarDatos()" /></div>
					</div>
				</g:form>
				<g:if test="${flash.message=='error'}">
					<h3 style="text-align:center; color: #000;" class="lead"><span class="label label-danger" style="margin-left: -25%;">Ya hay un administrador registrado con ese DNI.</span></h3>
				</g:if>
				<g:if test="${flash.message=='success'}">
					<h3 style="text-align:center; color: #000;" class="lead"><span class="label label-success" style="margin-left: -15%;">Administrador registrado correctamente.</span></h3>
				</g:if>
			</div>
		</div>
	</body>
</html>