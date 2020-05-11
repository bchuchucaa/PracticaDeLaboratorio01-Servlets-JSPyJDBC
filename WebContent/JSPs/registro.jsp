 <?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="/Proyectov6/img/icons/favicon.ico"/>
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
	<link rel="stylesheet" type="text/css" href="/Proyectov6/css/util.css">
	<link rel="stylesheet" type="text/css" href="/Proyectov6/css/main.css">
																			<link rel="stylesheet" type="text/css" href="/Proyectov6/css/usuario/menu.css">
	
	<script>
	function numeros(){

	var z = document.getElementById("cedula").value;
	if(!/^[0-9]+$/.test(z)){
	    alert("Porfavor ingresa solo caracteres numericos para tu numero(Permitidos: 0-9)");
	    document.getElementById("cedula").value="";
	  }
}
function soloLetras(e) {
    key = e.keyCode || e.which;
    tecla = String.fromCharCode(key).toLowerCase();
    letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
    especiales = [8, 37, 39, 46];

    tecla_especial = false
    for(var i in especiales) {
        if(key == especiales[i]) {
            tecla_especial = true;
            break;
        }
    }

    if(letras.indexOf(tecla) == -1 && !tecla_especial)
        return false;
}

</script>
<title>Registro de usuario</title>
</head>
<body>
	<header id="header">
	<nav class="links" style="--items: 5;">
		<a href="/Proyectov6/index.html">Inicio</a>
		<span class="line"></span>
	</nav>
</header>
<br><br>
<form action="/Proyectov6/RegistroController" method="post" id="registro">
<div class="limiter">
		<div class="container-login100" style="background-image: url('/Proyectov6/img/bg-01.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Registro de usuarios
				</span>
				<form class="login100-form validate-form p-b-33 p-t-5">
					<div class="wrap-input100 validate-input" data-validate = "Ingrese su cedula">
						<input class="input100" type="text" id="cedula" minlength="10" onkeyup="return numeros(this)" name="cedula" placeholder="Cedula de usuario" required>
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Ingrese su nombre">
						<input class="input100" type="text" name="nombre" onkeypress="return soloLetras(event)" placeholder="Nombre de usuario" required>
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Ingrese sus apellidos">
						<input class="input100" type="text" onkeypress="return soloLetras(event)" name="apellido" placeholder="Apellido del usuario" required>
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="Ingrese su correo">
						<input class="input100" type="email" name="correo" placeholder="Correo del usuario" required>
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Ingrese su contrasena">
						<input class="input100" type="password" name="contrasena" minlength="8" placeholder="Elija su contrasena" required>
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>
			
					

					<div class="container-login100-form-btn m-t-32">

						 <input class="login100-form-btn" type="submit" value="Registrarse">
						  <input class="login100-form-btn" type="reset" value="Limpiar">
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

 </form>













</body>
</html>
