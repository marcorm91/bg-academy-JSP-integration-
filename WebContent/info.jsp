<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="es">
<head>
	<title>Quiénes Somos - Big Ben Academy</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="assets/css/sass/estilos.css">
	<link rel="stylesheet" type="text/css" href="assets/fonts/font-awesome/css/font-awesome.min.css">
	<link rel="shortcut icon" href="assets/imagenes/favicon.ico">
</head>
<body>

	<div class="complete-body"></div>

	<!-- Contenedor principal de index.html -->
	<div class="container">
		
		<!-- Contenedor de logo principal de la academia -->
		<div id="cabecera"></div>

		<!-- Cabecera que contiene menú principal para el acceso a las distintas secciones de la web -->
		<div id="menu"></div>

		<!-- Panel de navegación -->
		<div id="navegacion">
			<div class="col-xs-12 barra">
				<div class="col-xs-6 navIzquierda">
					<span> QUIÉNES SOMOS </span>
				</div>
			</div>
		</div> <!-- Fin de 'Panel de navegación' -->

	</div> <!-- Fin de contenedor principal de index.html -->


	<!-- Contenedor que engloba a lo principal de la web -->
	<div class="container">

		<div class="row">

			<!-- Contenedor de bienvenida con datos varios de la web -->
			<div class="col-xl-12 col-xs-12 contenedorPrincipal contenedorFull contenedorQuienesSomos">

				<div id="titulo_cont">
					<h1> Quiénes somos </h1>
				</div>

				<div id="contenido_cont" class="text-justify">
				
				  <div class="row">
					<div class="col-md-3 text-center hidden-lg-down">
						<img src="assets/imagenes/torre.png" class="img-fluid" id="torre_png">
					</div>

					<div class="row col-xs-12 col-xl-9 filaQuien">
						<div class="col-xs-4 col-md-4 titulo_quien text-xs-center">
							<h1> Big Ben Academy </h1>	
						</div>

						<div class="col-xs-8 col-md-8 contenido_quien ">
							<p> Se inicia en El Puerto de Santa María, Cádiz, en el año 2017, y actualmente nos 
								dedicamos a la enseñanza de inglés desde los niveles más básicos hasta los más
								avanzados.
							</p>
							<p> Nuestro objetivo es seguir creciendo como academia y abarcar todas las provincias de la región 	   y en un futuro a largo plazo mantenernos en grandes ciudades como Madrid o Barcelona.
							</p>
						</div>
					</div>

					<div class="row col-xs-12 col-xl-9 filaQuien">
						<div class="col-xs-4 col-md-4 titulo_quien text-xs-center">
							<h1> Nuestros profesores </h1>	
						</div>

						<div class="col-xs-8 col-md-8 contenido_quien">
							<p> Big Ben Academy está formado por un equipo humano que combina experiencia con
									creatividad, diversión y profesionalidad.
							</p>
							<p>
								Puede conocerlos con más detalle <a href="./docencia.jsp" title="Ir a Docencia"> AQUÍ</a>.
							</p>
						</div>
					</div>

					<div class="row col-xs-12 col-xl-9 filaQuien">
						<div class="col-xs-4 col-md-4 titulo_quien text-xs-center">
							<h1> ¿Dónde estamos? </h1>	
						</div>

						<div class="col-xs-8 col-md-8 contenido_quien">
							<p> Actualmente tenemos academia en El Puerto de Santa María, Cádiz, con objetivo de crecer en 		distintas localidades de la provincia y extendernos a provincias de la región.
							</p>
							<p>
								Estamos en <b> Calle Poeta Rafael Alberti, nº 0 </b>
								<div class="hidden-sm-down">
								
									<div>
										<div id='gmap_canvas' style='height:400px;width:400px;'> </div>
										<style>#gmap_canvas img{max-width:none!important;background:none!important}
										</style>
									</div>
								
								</div>
							</p>
						</div>
					</div>
				  
				  </div>

				</div> <!-- Fin contenido principal -->

			</div> <!-- Fin contenedor principal -->

		</div> <!-- Fin de fila (row) -->

	</div> <!-- Fin container -->

	<!-- Pie de página -->
	<div id="pie_pag"></div>
	
	<div class="loader" style='display: none;'></div>

	<!-- jQuery -->
	<script type="text/javascript" src="assets/js/jquery-3.1.1.min.js"></script>
	<!-- Tether -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"></script>
	<!-- Bootstrap -->
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<!-- Script personal -->
	<script type="text/javascript" src="assets/js/script.js"></script>

	<script src='https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyDKABVSsz_k5ycTiB97Jvx9t07de3bHsxA'></script>

	<script type='text/javascript'>function init_map(){var myOptions = {zoom:16,center:new google.maps.LatLng(36.593027,-6.240047600000025),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(36.593027,-6.240047600000025)});infowindow = new google.maps.InfoWindow({content:'<strong>Big Ben Academy</strong><br>Calle Rafael Alberti, número 0<br>11500 El Puerto de Santa María<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);
	</script>


</body>
</html>