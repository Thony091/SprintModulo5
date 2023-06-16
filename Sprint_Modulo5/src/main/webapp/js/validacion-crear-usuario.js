
// Validacion de Campos con JavaScript

document.addEventListener("DOMContentLoaded", function() {
	// Obtener el formulario y sus campos
	let form = document.querySelector("#form-crear-usuario");
	let user = document.querySelector("#user");
	let password = document.querySelector("#password");
	let run = document.querySelector("#run");
	let fechaNacimiento = document.querySelector("#fechaNacimiento");
	let names = document.querySelector("#names");
	let lastName = document.querySelector("#lastname");
	let tipoUser = document.querySelector("#tipousuario");
	//tipo cliente    
	let telefono = document.querySelector("#telefono");
	let afp = document.querySelector("#afp");
	let sistemaSalud = document.querySelector("#sistemasalud");
	let direccion = document.querySelector("#direccion");
	let comuna = document.querySelector("#comuna");
	let edad = document.querySelector("#edad");
	//profesional    
	let titulo = document.querySelector("#titulo");
	let fechaIngreso = document.querySelector("#fechaingreso");
	//administrativo
	let area = document.querySelector("#area");
	let experienciaPrevia = document.querySelector("#experienciaprevia");


	function creaUsuarioValidate() {

		let userValue = user.value;
		let passwordValue = password.value;
		let runValue = run.value;
		let fechaNacimientoValue = fechaNacimiento.value;
		let namesValue = names.value;
		let lastNameValue = lastName.value;

		//let tipoUserValue = tipoUser.value;
		//cliente
		let telefonoValue = telefono.value;
		let afpValue = afp.value;
		let sistemaSaludValue = sistemaSalud.value;
		let direccionValue = direccion.value;
		let comunaValue = comuna.value;
		let edadValue = edad.value;
		//profesional
		let tituloValue = titulo.value;
		let fechaIngresoValue = fechaIngreso.value;
		//administrativo
		let areaValue = area.value;
		let experienciaPreviaValue = experienciaPrevia.value;

		// user    
		if (userValue.length == 0) {
			document.querySelector("#userHelp").innerHTML = "El campo no puede estar vacio.";

		} else {
			document.querySelector("#userHelp").innerHTML = " ";
		}
		// password
		if (passwordValue.length == 0) {
			document.querySelector("#passHelp").innerHTML = "El campo no puede estar vacio.";

		} else {
			document.querySelector("#passHelp").innerHTML = " ";
		}
		// run      
		if (runValue.length == 0) {
			document.querySelector("#runclienteHelp").innerHTML = "El campo no puede estar vacio";

		} else if (runValue.length < 8) {
			document.querySelector("#runclienteHelp").innerHTML = "El rut debe contener almenos 8 digitos sin guion ni número verificador";

		} else {
			document.querySelector("#runclienteHelp").innerHTML = " ";
		}
		//fechaNacimiento
		if (fechaNacimientoValue.length == 0) {
			document.querySelector("#fechanacimientoHelp").innerHTML = "El campo no puede estar vacio.";
		} else {
			document.querySelector("#fechanacimientoHelp").innerHTML = " ";
		}
		//names
		if (namesValue.length == 0) {
			document.querySelector("#namesHelp").innerHTML = "El campo no puede estar vacio.";
		} else {
			document.querySelector("#namesHelp").innerHTML = " ";
		}
		//lastname
		if (lastNameValue.length == 0) {
			document.querySelector("#lastnameHelp").innerHTML = "El campo no puede estar vacio.";
		} else {
			document.querySelector("#lastnameHelp").innerHTML = " ";
		}
		//tipo
		switch (tipoUser.Value) {
			case "Cliente":
				//telefono
				if (telefonoValue.length == 0) {
					document.querySelector("#telefonoHelp").innerHTML = "El campo no puede estar vacio.";
				} else {
					document.querySelector("#telefonoHelp").innerHTML = " ";
				}
				//afp
				if (afpValue.length == 0) {
					document.querySelector("#afpHelp").innerHTML = "El campo no puede estar vacio.";
				} else {
					document.querySelector("#afpHelp").innerHTML = " ";
				}
				//sistema salud
				if (sistemaSaludValue.length == 0) {
					document.querySelector("#sistemasaludHelp").innerHTML = "El campo no puede estar vacio.";
				} else {
					document.querySelector("#sistemasaludHelp").innerHTML = " ";
				}
				//direccion
				if (direccionValue.length == 0) {
					document.querySelector("#direccionHelp").innerHTML = "El campo no puede estar vacio.";
				} else {
					document.querySelector("#direccionHelp").innerHTML = " ";
				}
				//comuna
				if (comunaValue.length == 0) {
					document.querySelector("#comunaHelp").innerHTML = "El campo no puede estar vacio.";
				} else {
					document.querySelector("#comunaHelp").innerHTML = " ";
				}
				//edad
				if (edadValue.length == 0) {
					document.querySelector("#edadHelp").innerHTML = "El campo no puede estar vacio.";
				} else {
					document.querySelector("#edadHelp").innerHTML = " ";
				}

				break;
			case "Profesional":
				//titulo
				if (tituloValue.length == 0) {
					document.querySelector("#tituloHelp").innerHTML = "El campo no puede estar vacio.";
				} else {
					document.querySelector("#tituloHelp").innerHTML = " ";
				}
				//fecha ingreso
				if (fechaIngresoValue.length == 0) {
					document.querySelector("#fechaingresoHelp").innerHTML = "El campo no puede estar vacio.";
				} else {
					document.querySelector("#fechaingresoHelp").innerHTML = " ";
				}
				break;
			case "Administrativo":
				//area
				if (areaValue.length == 0) {
					document.querySelector("#areaHelp").innerHTML = "El campo no puede estar vacio.";
				} else {
					document.querySelector("#areaHelp").innerHTML = " ";
				}
				//experiencia previa
				if (experienciaPreviaValue.length == 0) {
					document.querySelector("#fechaingresoHelp").innerHTML = "El campo no puede estar vacio.";
				} else {
					document.querySelector("#fechaingresoHelp").innerHTML = " ";
				}
				break;
			default:
				//este código se ejecutará si ninguno de los casos coincide con la expresión
				break;
		}
		//validacion final
		if (userValue.length == 0 ||
			passwordValue.length == 0 ||
			runValue.length == 0 ||
			fechaNacimientoValue.length == 0 ||
			namesValue.length == 0 ||
			lastNameValue.length == 0
		) {
			document.querySelector("#finalHelp").innerHTML = "Debes ingresar todos los datos del formulario.";
			return false;
		}
		//para poner las demas hay que hacer la validacion en 

		//Si todo esta bien y pasaron todas las validaciones, se enviara el formulario.
		return true;
	}

	// Agregamos la función de validación al evento submit del formulario
	form.addEventListener("submit", function(event) {

		//* Si la funcion validate retorna un false no se enviará el formulario
		if (!creaUsuarioValidate()) {

			event.preventDefault();
		}
	})

});