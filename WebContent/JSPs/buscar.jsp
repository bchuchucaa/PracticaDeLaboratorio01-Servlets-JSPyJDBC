<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/Proyectov6/css/usuario/util.css">
	<link rel="stylesheet" type="text/css" href="/Proyectov6/css/usuario/main.css">
	
		<link rel="stylesheet" type="text/css" href="/Proyectov6/css/usuario/tabla.css">
				<link rel="stylesheet" type="text/css" href="/Proyectov6/css/usuario/menu.css">
<title>Insert title here</title>
</head>
<body>
	<header id="header">
	<nav class="links" style="--items: 5;">
		<a href="/Proyectov6/index.html">Inicio</a>
		<a href="#">${p1.nombre}</a>
		
		<a href="#">${p1.apellido}</a>
		<a href="mailto:${p1.correo}">Enviar correo a : ${p1.correo}</a>
		<a href="LogoutServlet">Logout</a>
		<span class="line"></span>
	</nav>
</header>
<br><br><br><br>
 
<form action="/Proyectov6/BuscarUsuario" autocomplete="off">
    <fieldset class="url">
      <input id="url" type="text" name="usuario" required>
      <label for="url"><i class="fa fa-search" aria-hidden="true"></i> Ingrese correo o cedula</label>
      <div class="after"></div>
    </fieldset>
    <fieldset class="enter">
      <input type="submit" value="Buscar"/>
    </fieldset>
  </form>

<c:set var="p1" value="${requestScope['telefonos']}" />

		<table class=container>
				<tr>
					<td>Usuario</td>
					<td>${userexistente.nombre}</td>
					<td><a href="mailto:${userexistente.correo}">Enviar correo<i class="fa fa-envelope-o" style="font-size:48px;color:red"></i></a></td>
					
				</tr>
			<c:forEach items="${telefonos}" var="telefonos">
				
				
				<tr>
					<td>${telefonos.tipo}</td>
					<td>${telefonos.numero}</td>
					<td><a href="tel:${telefonos.numero}">Contactar usuario<i class="fa fa-mobile-phone" style="font-size:48px;color:red"></i></a></td>
					
			
				</tr>
				
			</c:forEach>
		</table>
		<h1>listo</h1>

</body>
</html>