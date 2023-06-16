<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"  rel="stylesheet">
		<title>Editar Usuario-Administrativo</title>
		<link rel="stylesheet" href="css/styles.css">
	</head>
	<body>
		<!-- Navbar -->
	    <jsp:include page="navbar.jsp"/>
	    <!-- End Navbar -->
	    
		<div class="container mt-5">
			
			
		 <div class="row mt-2">
			
			
	
   	<!-- Codigo del Formulario Edicion Administrativo -->
		    <div class="col-xs-12 offset-1 col-md-10 " style="justify-content: space-around;">
				<h1 class="text-center">Editar perfil de Administrativo</h1>
		    
		      <form action="ServletCrudUsuario" method="post" >
		      
		      	<div class="mb-3">
		      		
		      		<input 
		           	type="hidden"
                    class="form-control"
                    id="id"
                    name="id"
                    value="${administrativo.id}"
                    required
                        />
                        
		           <input 
		           	type="hidden"
                    class="form-control"
                    id="tipoUsuario"
                    name="userType"
                    value="${administrativo.tipoUsuario}"
                    required
                        />
		      		
		          <label for="InputNombres" class="form-label">Nombre(s):</label>
		          <input
		            type="text"
		            class="form-control"
		            id="InputNombres"
		        	name="nombre"
		        	value="${administrativo.nombre}"
		        	required
		          />
		        </div>
		
		        <div class="mb-3">
		          <label for="InputApellidos" class="form-label">Apellido(s):</label>
		          <input
		            type="text"
		            class="form-control"
		            id="InputApellidos"
		            name="apellidos"
		            value="${administrativo.apellido}"
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
		        	value="${administrativo.fechaNacimiento}"
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
		        	value="${administrativo.run}"
		        	required
		          />
		        </div>
		        
		            <div class="mb-3">
		          <label for="InputArea" class="form-label">Área:</label>
		          <input
		            type="text"
		            class="form-control"
		            id="InputArea"
		        	name="area"
		        	value="${administrativo.area}"
		        	required
		          />
		        </div>
		        
		        
		            <div class="mb-3">
		          <label for="InputExperiencia" class="form-label">Experiencia previa:</label>
		          <input
		            type="text"
		            class="form-control"
		            id="InputExperiencia"
		        	name="experienciaPrevia"
		        	value="${administrativo.experienciaPrevia}"
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