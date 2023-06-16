<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"  rel="stylesheet">
		<title>Editar Usuario-Profesional</title>
		<link rel="stylesheet" href="css/styles.css">
	</head>
	<body>
		<!-- Navbar -->
	    <jsp:include page="navbar.jsp"/>
	    <!-- End Navbar -->
	    
		<div class="container mt-5">
			
			
		 <div class="row mt-2">			
	
   		<!-- Codigo del Formulario Login -->
		    <div class="col-xs-12 offset-1 col-md-10 " style="justify-content: space-around;">
				<h1 class="text-center">Editar perfil de Profesional</h1>
		    
		      <form action="ServletCrudUsuario" method="post" >
		      
		        <div class="mb-3">
		          <input 
		           	type="hidden"
                    class="form-control"
                    id="id"
                    name="id"
                    value="${profesional.id}"
                    required
                        />
                        
		           <input 
		           	type="hidden"
                    class="form-control"
                    id="tipoUsuario"
                    name="userType"
                    value="${profesional.tipoUsuario}"
                    required
                        />
                        
		          <label for="InputEmail1" class="form-label">Nombre(s):</label>
		          <input
		            type="text"
		            class="form-control"
		            id="InputEmail1"
		        	name="nombre"
		        	value="${profesional.nombre}"
		        	required
		          />
		        </div>
		
		        <div class="mb-3">
		          <label for="apellido" class="form-label">Apellido(s):</label>
		          <input
		            type="text"
		            class="form-control"
		            id="apellido"
		            name="apellidos"
		            value="${profesional.apellido}"
		            required
		          />
		    
		        </div>
		        
		            <div class="mb-3">
		          <label for="exampleInputEmail1" class="form-label">Fecha de nacimiento:</label>
		          <input
		            type="text"
		            class="form-control"
		            id="exampleInputEmail1"
		        	name="fechaNacimiento"
		        	value="${profesional.fechaNacimiento}"
		        	required
		          />
		        </div>
		        
		            <div class="mb-3">
		          <label for="exampleInputEmail1" class="form-label">RUN:</label>
		          <input
		            type="text"
		            class="form-control"
		            id="exampleInputEmail1"
		        	name="run"
		        	value="${profesional.run}"
		        	required
		          />
		        </div>
		        
		            <div class="mb-3">
		          <label for="exampleInputEmail1" class="form-label">Título de estudios:</label>
		          <input
		            type="text"
		            class="form-control"
		            id="exampleInputEmail1"
		        	name="titulo"
		        	value="${profesional.titulo}"
		        	required
		          />
		        </div>
		        
		        
		            <div class="mb-3">
		          <label for="exampleInputEmail1" class="form-label">Fecha de ingreso a la empresa:</label>
		          <input
		            type="text"
		            class="form-control"
		            id="exampleInputEmail1"
		        	name="fechaIngreso"
		        	value="${profesional.fechaIngreso}"
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