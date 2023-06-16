document.addEventListener('DOMContentLoaded', function() {
	//* formulario
	let form = document.querySelector("#form-login");
	//* input user
	let user = document.querySelector("#InputUser");
	//* input password
	let password = document.querySelector("#InputPassword");
	function validate() {
		// user
		let userValue = user.value;
		if (userValue.length == 0) {
			document.querySelector("#userHelp").innerHTML = "El campo Usuario no puede estar vacío";
			//return false;
		} else {
			document.querySelector("#userHelp").innerHTML = " ";
		}  //* Contraseña
		let passValue = password.value;
		if (passValue.length == 0) {
			document.querySelector("#passHelp").innerHTML = "El campo Contraseña no puede estar vacío";
			//return false;
		} else {
			document.querySelector("#passHelp").innerHTML = " ";
		}
		//validacion general
		if (userValue.length == 0 || passValue.length == 0) {
			document.querySelector("#finalHelp").innerHTML = "Debes ingresar un usuario y contraseña.";
			return false;
		}
		//* Si todo esta bien pasaron todas las validaciones, retornamos TRUE
		return true;
	}

	form.addEventListener("submit", function(event) {

		if (!validate()) {
			event.preventDefault();
			//impido que se envie el formulario
		}
	});

}
);