<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"  rel="stylesheet">
		<title>Login</title>
		<link rel="stylesheet" href="css/styles.css">
	</head>
	<body>
		<div class="container mt-5">
				<h1 class="text-center">Incio de Sesion</h1>
			<div class="col-4 offset-4 ">
		      <form action="ServletLogin" method="post" >
		        <div class="mb-3">
		          <label for="exampleInputEmail1" class="form-label">Usuario</label>
		          <input
		            type="text"
		            class="form-control"
		            id="exampleInputEmail1"
		        	name="usuario"
		        	required
		          />
		        </div>
		
		        <div class="mb-3">
		          <label for="exampleInputPassword1" class="form-label">Ingrese su contraseña</label>
		          <input
		            type="password"
		            class="form-control"
		            id="exampleInputPassword1"
		            name="password"
		            required
		          />
		    
		        </div>
		        <div class="d-grid gap-2">
		          <button type="submit" class="btn btn-success">Acceder</button>
		        </div>
		      </form>
		
		    </div>

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