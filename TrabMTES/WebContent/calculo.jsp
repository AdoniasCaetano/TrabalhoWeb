<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="trabalho.Fatorial"%>

<!DOCTYPE html>
<html>
  <head>
    <title> Calcula o fatorial</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="http://localhost:8080/GeradorQRCode/css/bootstrap.css"rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
    <link href="http://localhost:8080/GeradorQRCode/css/bootstrap.css" rel="stylesheet">

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="http://twitter.github.io/bootstrap/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="http://twitter.github.io/bootstrap/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="http://twitter.github.io/bootstrap/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="http://twitter.github.io/bootstrap/assets/ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="http://twitter.github.io/bootstrap/assets/ico/favicon.png">
  </head>
  <body>
 
    <div class="container">

      <!-- Main hero unit for a primary marketing message or call to action -->
      <div class="hero-unit">
	
		<form name="form_buscar" action="calculo.jsp" method="post" class="form-horizontal">
			
			<div class="control-group">
				<label class="control-label" for="campo">Numero</label>
				<div class="controls">
					<input type="text" name="campo" id="campo" placeholder="nome">
 				</div>
			</div>
			
			<div class="control-group">
				<div class="controls">
					<img src="img/buscar.png" alt=""/><button type="submit" class="btn">Calcular</button>
					<img src="img/limpar.png" alt=""/><button type="reset" class="btn">Limpar</button>
				</div>
			</div>
		</form>
		
		<div class="alert alert-info">
			<%
				String campo = request.getParameter("campo");

				if( campo != null ){
					int numero = Integer.parseInt(campo);
					int fatorial = Fatorial.calcular(numero);
			%>
		        	Fatorial de <%=campo%> é <%=fatorial%>
        	<%	}else{%>
        		Não há valor para calcular!
        	<%}%>
        </div>
		
		
      </div>
    </div> <!-- /container -->
</body></html>