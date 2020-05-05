<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="../estilos/usuario.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Insert title here</title>
</head>
<body>
	<header>
	<a href="LogoutServlet">Logout</a>
	
	</header>
	<form action="" id="usuario">
		<h1>Usuario</h1>
		<h2>binvenido..</h2>
		<c:set var="p1" value="${requestScope['usuario']}" />
		<c:set var="t1" value="${requestScope['telefono']}" />
		<p>Id: ${p1.cedula}</p>
		<p>Nombre: ${p1.nombre}</p>
		<p>Correo: ${p1.correo}</p>

		<p>Apellido: ${p1.apellido}</p>
		<a href="mailto:${p1.correo}">Enviar correo a : ${p1.correo}</a>

	
3
	</form>

	<form action="TelefonoController" method="get" id="telefono">
	
		<p>
			Numero<input type="text" placeholder="Ej.0992774056"
				name="tel_numero" />
		</p>
		<p>
			Tipo: <input type="text" placeholder="Ej.convencional"
				name="tel_tipo" />
		</p>
		<p>
			Operadora: <input type="text" placeholder="Ej.movistar"
				name="tel_operadora" />
		</p>
		<p>
			<input type="hidden" value="${p1.cedula}" name="usu_usuario" />
		</p>
			<p>
			<input type="hidden" value="${p1.correo}" name="usu_correo" />
		</p>
			<p>
			<input type="hidden" value="${p1.contrasena}" name="usu_contrasena" />
		</p>
		<p>
			<input type="submit" value="Agregar Telefono"> <input
				type="reset" value="Cancelar">
		</p>
	</form>

	<section>
	<table>
		<tr>
			<td>Numero</td>
			<td>Tipo</td>
			<td>Numero</td>

		</tr>
		<c:forEach items="${telefono}" var="telefono">

			<tr>
				<td><input type="text" name="tnumero" value="${telefono.numero}" /></td>
				<td><input type="text" name="ttipo" value="${telefono.tipo}" /></td>
				<td><input type="text" name="toperadora" value="${telefono.operadora}" /></td>
				<td><a href="tel:${telefono.numero}"><i class="fa fa-mobile-phone" style="font-size:48px;color:red"></i></a></td>
				<td><h3><a href="ActualizarTelefono?codigo=${telefono.codigo}&correo=${p1.correo}&contrasena=${p1.contrasena}">Modiicar</a></h3></td>
				<td><h3><a href="EliminarTelefono?codigo=${telefono.codigo}&correo=${p1.correo}&contrasena=${p1.contrasena}">Eliminar</a></h3></td>
				
			</tr>

		</c:forEach>
	</table>
	</section>
	


</body>
</html>