<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
	<h1>Hola Scorpion</h1>
	<c:set var="p1" value="${requestScope['usuario']}" />
	<c:set var="p2" scope="request" value="${telefono}" />
	<p>Id: ${telefono.codigo}</p>
	
	<form action="/Proyectov6/ActTelefono" method="get" id="telefono">
	
		<p>
			Nuevo Numero<input type="text" placeholder="Ej.0992774056"
				name="tel_numero" />
		</p>
		<p>
			Nuevo Tipo: <input type="text" placeholder="Ej.convencional"
				name="tel_tipo" />
		</p>
		<p>
			Nueva Operadora: <input type="text" placeholder="Ej.movistar"
				name="tel_operadora" />
		</p>
		<p>
			<input type="hidden" value="${telefono.codigo}" name="tel_codigo" />
		</p>
			<p>
			<input type="hidden" value="${usuario.correo}" name="usu_correo" />
		</p>
			<p>
			<input type="hidden" value="${usuario.contrasena}" name="usu_contrasena" />
		</p>
		<p>
			<input type="submit" value="Agregar Telefono"> <input
				type="reset" value="Cancelar">
		</p>
	</form>
</body>
</html>