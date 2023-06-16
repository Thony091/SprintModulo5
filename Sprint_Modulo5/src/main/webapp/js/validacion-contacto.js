// Validacion de Campos con JavaScript
document.addEventListener("DOMContentLoaded", function(){
	// Obtener el formulario y sus campos
	let form = document.querySelector("#form-contacto");
	let name = document.querySelector("#name");
	let email = document.querySelector("#email");
	//let otroemail = document.getElementById('email');
	let asunto = document.querySelector("#asunto");
	let mensaje = document.querySelector("#text-area");


	function contactoValidate() {

		let nameValue = name.value;
		let emailValue = email.value;
		let asuntoValue = asunto.value;
		let mensajeValue = mensaje.value;
		let emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

		//validacion general
		if (nameValue.length === 0 || emailValue.length === 0 || asuntoValue.length === 0 || mensajeValue.length === 0 || mensajeValue.length < 10) {
			document.querySelector("#finalHelp").innerHTML = "Debe llenar todos los campos correctamente.";
			return false;
		}

		
		// Validando nombre
		if (nameValue.length == 0) {
			document.querySelector("#nameHelp").innerHTML = "El campo Nombre no puede estar vacío";
			return false;
		} else {
			document.querySelector("#nameHelp").innerHTML = " ";
		}
		console.log(nameValue);
		// Validando email
		if (emailValue.length == 0) {
			document.querySelector("#emailHelp").innerHTML = "El Campo Email no debe estar vacío";
			return false;
		} else if (!emailRegex.test(emailValue)) {
			document.querySelector("#mailHelp").innerHTML = "Por favor, ingresa un correo electronico válido";
			return false;
		} else {
			document.querySelector("#mailHelp").innerHTML = " ";
		}
		console.log(emailValue);

		// Validando asunto
		if (asuntoValue.length == 0) {
			document.querySelector("#asuntoHelp").innerHTML = "Asunto no puede estar vacío";
			return false;

		} else {
			document.querySelector("#asuntoHelp").innerHTML = " ";
		}
		// Validando mensaje
		if (mensajeValue.trim() == "") {
			document.querySelector("#textHelp").innerHTML = "Mensaje no puede estar vacío, mínimo 10 caracteres";
			return false;
		} else if (mensajeValue.length < 10) {
			document.querySelector("#textHelp").innerHTML = "Mensaje no puede estar vacío, mínimo 10 caracteres";
			return false;
		} else {
			document.querySelector("#textHelp").innerHTML = " ";
		}

		
		//Si todo esta bien y pasaron todas las validaciones, se enviara el formulario.
		return true;
	}

	// Agregamos la función de validación al evento submit del formulario
	form.addEventListener("submit", function(event) {

		//* Si la funcion validate retorna un false no se enviará el formulario
		if (!contactoValidate()) {
			event.preventDefault();
			// impido que se envie el formulario            
		}
	})

});