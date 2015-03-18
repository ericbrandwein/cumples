<!DOCTYPE html>
<html>
	<head>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="${request.contextPath}/bootstrap/css/bootstrap.css">
		<script type="text/javascript" src="${request.contextPath}/js/jquery-2.1.3.js"></script>
		<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
		<script type="text/javascript" src="${request.contextPath}/bootstrap/js/bootstrap.js"></script>
	  <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">   <!-- Bootstrap core CSS -->
		<link rel="stylesheet" href="${resource(dir:'css', file: 'bootstrap.css')}" />
    <link href="starter-template.css" rel="stylesheet"> <!-- Custom styles for this template -->
 		
		<title>Agregar Administrador</title>

    <script type="text/javascript">
      function eleccion(nombre,valor){
          $("#dropdownMenu1").html(nombre+"<span class='caret'></span>");
          $("#input-empresa").val(valor);
      }

    </script>
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
      <div class="container" style="width:30%">
        <g:form class="form-inline" method="post" controller="admin" action="agregar">
          <div class="form-group">
            <div class="dropdown" >
                <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                  Elegir Empresa
                  <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" >
                  <g:each in="${lista}" var="empresa">
                    <li role="presentation"><a onclick="eleccion('${empresa.nombre}','${empresa.id}')" role="menuitem" tabindex="-1">${empresa.nombre}</a></li>
                  </g:each>
                </ul>
            </div>
            <input id="input-empresa" hidden="true" name="empresa">
            <input type="text" name="username" id="username" class="form-control" placeholder="Username" required>
          </div><br><br>
          <div class="form-group">
            <input type="password" name="password" id="password" class="form-control" placeholder="Password"  required>
          </div><br><br>
          <div class="container" style="width:100%">
            <div><input id="button-submit" type="submit"  class="btn btn-warning" value="Agregar Administrador"  /></div>
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