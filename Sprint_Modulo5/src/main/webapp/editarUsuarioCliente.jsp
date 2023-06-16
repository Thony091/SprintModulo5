<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"  rel="stylesheet">
		<title>Editar Usuario-Cliente</title>
		<link rel="stylesheet" href="css/styles.css">
	</head>
	<body>
		<!-- Navbar -->
	    <jsp:include page="navbar.jsp"/>
	    <!-- End Navbar -->
	    
		<div class="container mt-5">			
			
		 <div class="row mt-2">			
	
   		<!-- Codigo del Formulario Edicion Cliente -->
		    <div class="col-xs-12 offset-1 col-md-10 " style="justify-content: space-around;">
				<h1 class="text-center">Editar perfil de Cliente</h1>
		    
		      <form action="ServletCrudUsuario" method="post" >
		      
		        <div class="mb-3">
		        
		           <input 
		           	type="hidden"
                    class="form-control"
                    id="id"
                    name="id"
                    value="${cliente.id}"
                    required
                        />
                        
		           <input 
		           	type="hidden"
                    class="form-control"
                    id="tipoUsuario"
                    name="userType"
                    value="${cliente.tipoUsuario}"
                    required
                        />
                        
		          <label for="InputNombre" class="form-label">Nombre(s):</label>
		          <input
		            type="text"
		            class="form-control"
		            id="InputNombre"
		        	name="nombre"
		        	value="${cliente.nombre}"
		        	required
		          />
		        </div>
		
		        <div class="mb-3">
		          <label for="InputApellido" class="form-label">Apellido(s):</label>
		          <input
		            type="text"
		            class="form-control"
		            id="InputApellido"
		            name="apellidos"
		            value="${cliente.apellido}"
		            required
		          />
		    
		        </div>
		        
		            <div class="mb-3">
		          <label for="InputFechaNacimiento" class="form-label">Fecha de nacimiento:</label>
		          <input
		            type="text"
		            class="form-control"
		            id="InputFechaNacimiento"
		        	name="fechaNacimiento"
		        	value="${cliente.fechaNacimiento}"
		        	required
		          />
		        </div>
		        
		            <div class="mb-3">
		          <label for="InputRun" class="form-label">RUN:</label>
		          <input
		            type="text"
		            class="form-control"
		            id="InputRun"
		        	name="run"
		        	value="${cliente.run}"
		        	required
		          />
		        </div>
		        
		            <div class="mb-3">
		          <label for="InputTelefono" class="form-label">Teléfono:</label>
		          <input
		            type="number"
		            class="form-control"
		            id="InputTelefono"
		        	name="telefono"
		        	value="${cliente.telefono}"
		        	required
		          />
		        </div>
		        
		        
		            <div class="mb-3">
		          <label for="InputAfp" class="form-label">AFP:</label>
		          <input
		            type="text"
		            class="form-control"
		            id="InputAfp"
		        	name="afp"
		        	value="${cliente.afp}"
		        	required
		          />
		        </div>
		        
		        	<div class="mb-3">
		          <label for="InputSistemaSalud" class="form-label">Sistema de Salud:</label>
		          <input
		            type="text"
		            class="form-control"
		            id="InputSistemaSalud"
		        	name="sistemaSalud"
		        	value="${cliente.sistemaSalud}"
		        	required
		          />
		        </div>
		        
		        	<div class="mb-3">
		          <label for="InputDireccion" class="form-label">Dirección:</label>
		          <input
		            type="text"
		            class="form-control"
		            id="InputDireccion"
		        	name="direccion"
		        	value="${cliente.direccion}"
		        	required
		          />
		        </div>
		        
		        	<div class="mb-3">
		          <label for="InputComuna" class="form-label">Comuna:</label>
		          <input
		            type="text"
		            class="form-control"
		            id="InputComuna"
		        	name="comuna"
		        	value="${cliente.comuna}"
		        	required
		          />
		        </div>
		        
		        	<div class="mb-3">
		          <label for="InputEdad" class="form-label">Edad:</label>
		          <input
		            type="number"
		            class="form-control"
		            id="InputEdad"
		        	name="edad"
		        	value="${cliente.edad}"
		        	required
		          />
		        </div>
		       
		        <input type="hidden" name="opcion" value="updateUsuario">
		        <div class="d-grid gap-2">
		          <button type="submit" class="btn btn-primary">Confirmar</button>
		        </div>
		        		        
		      </form>
		
		    </div>
		  </div>
		<!-- Fin Codigo del Formulario Login -->
			

		</div>
		
		<!-- Footer -->
	    <jsp:include page="footer.jsp"/>
	    <!-- End Footer -->
	    
		<!-- JavaScript de bootstrap -->
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
		<!-- Fin JavaScript de bootstrap -->

</body>
</html>