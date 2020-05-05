 <?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel = "stylesheet"type = "text/css"href = "estilos/registro.css" />
<title>Insert title here</title>
</head>
<body>
<form action="/Proyectov6/RegistroController" method="post" id="registro">
<h1>Registro de Usuario</h1>
<p>Cedula: <input type="text" name="cedula" size="40" required></p>
<p>Nombre: <input type="text" name="nombre"  size="40" required></p>
<p>Apellido: <input type="text" name="apellido"  size="40" required></p>
<p>Correo: <input type="email" name="correo" size="40" required></p>
<p>Contrasena: <input type="text" name="contrasena" size="40" pattern=".{8,}" required></p>
 <p>
    <input  type="submit" value="Enviar">
    <input type="reset" value="Cancelar">
  </p>
 </form>

</body>
</html>
