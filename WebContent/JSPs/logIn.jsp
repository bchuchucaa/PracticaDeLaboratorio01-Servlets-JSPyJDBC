<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel = "stylesheet"type = "text/css"href = "../estilos/login.css" />
<title>Insert title here</title>
</head>
<body>
<form action="/Proyectov6/SesionController" method="get" id="registro">
<h1>Inicio de Sesion</h1>
<p>Correo: <input type="email" name="correo" size="40"></p>
<p>Contrasena: <input type="password" name="contrasena" size="40"></p>
 <p>
    <input  type="submit" value="Iniciar">
    <input type="reset" value="Cancelar">
    <a href="registro.jsp">Registro</a>
  </p>
 </form>

</body>
</html>

