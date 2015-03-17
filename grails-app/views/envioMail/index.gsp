<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="${request.contextPath}/bootstrap/css/bootstrap.css">
		<script type="text/javascript" src="${request.contextPath}/js/jquery-2.1.3.js"></script>
		<script type="text/javascript" src="${request.contextPath}/bootstrap/js/bootstrap.js"></script>
		<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
		<link rel="stylesheet" href="${resource(dir:'css', file: 'bootstrap.css')}" />
        <link href="starter-template.css" rel="stylesheet"> 

		<title>Envio mail</title>
	</head>
	
	<body>
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
            				<li class="active"><a style="margin-left: 0px;" class="navbar-brand" href="http://localhost:8080/cumples/envioMail/index">Verificar precios</a></li>
          				</ul>
          				 <ul class="nav navbar-nav navbar-right">
          				 <li><a href="http://localhost:8080/cumples/empleados/index">Registrar empleados</a> </li>
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
    	
    	<div style="text-align:center">
    		<h1><span class="label label-success">El reporte se ha enviado correctamente por mail</span></h1>
    	</div>
	</body>
</html>