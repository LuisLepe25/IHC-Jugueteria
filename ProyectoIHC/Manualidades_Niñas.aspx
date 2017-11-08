<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manualidades_Niñas.aspx.cs" Inherits="ProyectoIHC.Manualidades_Niñas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <meta charset="utf-8">
    <title>Bootshop online Shopping cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
<!--Less styles -->
   <!-- Other Less css file //different less files has different color scheam
	<link rel="stylesheet/less" type="text/css" href="themes/less/simplex.less">
	<link rel="stylesheet/less" type="text/css" href="themes/less/classified.less">
	<link rel="stylesheet/less" type="text/css" href="themes/less/amelia.less">  MOVE DOWN TO activate
	-->
	<!--<link rel="stylesheet/less" type="text/css" href="themes/less/bootshop.less">
	<script src="themes/js/less.js" type="text/javascript"></script> -->
	
<!-- Bootstrap style --> 
    <link id="callCss" rel="stylesheet" href="themes/bootshop/bootstrap.min.css" media="screen"/>
    <link href="themes/css/base.css" rel="stylesheet" media="screen"/>
<!-- Bootstrap style responsive -->	
	<link href="themes/css/bootstrap-responsive.min.css" rel="stylesheet"/>
	<link href="themes/css/font-awesome.css" rel="stylesheet" type="text/css">
<!-- Google-code-prettify -->	
	<link href="themes/js/google-code-prettify/prettify.css" rel="stylesheet"/>
<!-- fav and touch icons -->
    <link rel="shortcut icon" href="themes/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="themes/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="themes/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="themes/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="themes/images/ico/apple-touch-icon-57-precomposed.png">
	<style type="text/css" id="enject"></style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
  
        <div>
            <div id="header">
<div class="container">
<div id="welcomeLine" class="row">
	<div class="span6">Bienvenido!</div>
	<div class="span6">
	<div class="pull-right">
		<a href="Carrito.aspx"><span class="btn btn-mini btn-primary"><i class="icon-shopping-cart icon-white"></i> [ 3 ] Productos del carrito</span> </a> 
	</div>
	</div>
</div>
<!-- Navbar ================================================== -->
<div id="logoArea" class="navbar">
<a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
</a>
  <div class="navbar-inner">
    <a class="brand" href="index.html"><img width="300" height="350" src="Ima/deli.png"  alt="Bootsshop"/></a>
		<form class="form-inline navbar-search" method="post" action="products.html" >
		<input id="srchFld" class="srchTxt" type="text" />
		  <select class="srchTxt">
			<option>Todo</option>
              <option>Niños</option>
              <option>Niñas</option>
              <option>Bebes</option>
			
		</select> 
		  <button type="submit" id="submitButton" class="btn btn-primary">Buscar</button>
    </form>
    <ul id="topMenu" class="nav pull-right">
	 <li class=""><a href="Inicio.aspx">Inicio</a></li>
	 <li class=""><a href="normal.html">Catalogo</a></li>
	 <li class=""><a href="contact.html">Encuesta</a></li>
    <li class=""><a href="contact.html">Contactanos</a></li>
	 <li class="">
	</li>
    </ul>
  </div>
</div>
</div>
</div>
<!-- Header End====================================================================== -->
<div id="mainBody">
	<div class="container">
	<div class="row">
<!-- Sidebar ================================================== -->
	<div id="sidebar" class="span3">
		
		<ul id="sideManu" class="nav nav-tabs nav-stacked">
			<li class="subMenu open"><a> NIÑOS </a>
				<ul>
				<li><a href="Niños_figurasaccion.aspx"><i class="icon-chevron-right"></i>SUPER HEROES</a></li>
				<li><a href="Niños_vehiculos.aspx"><i class="icon-chevron-right"></i>CARRITOS</a></li>
				<li><a href="Niños_Lanzadores.aspx"><i class="icon-chevron-right"></i>LANZADORES</a></li>
				<li><a href="Niños_construccion.aspx"><i class="icon-chevron-right"></i>CONSTRUCCION</a></li>
                <li><a href="Niños_Autopistas.aspx"><i class="icon-chevron-right"></i>AUTOPISTAS</a></li>
				</ul>
			</li>
			<li class="subMenu"><a> NIÑAS </a>
			<ul style="display:none">
				<li><a href="Heroinas_Niñas.aspx"><i class="icon-chevron-right"></i>SUPER HEROES</a></li>
				<li><a href="consturccion_niñas.aspx"><i class="icon-chevron-right"></i>CONSTRUCCION</a></li>												
				<li><a href="mascotas_niñas.aspx"><i class="icon-chevron-right"></i>MASCOTAS</a></li>	
				<li><a href="Niñas_Muñecas.aspx"><i class="icon-chevron-right"></i>MUÑECAS Y ACCESORIOS</a></li>
				<li><a href="Manualidades_Niñas.aspx"><i class="icon-chevron-right"></i>MANUALIDADES</a></li>												
				<li><a href="Niñas_vehiculos.aspx"><i class="icon-chevron-right"></i>VEHICULOS</a></li>																							
			</ul>
			</li>
			<li class="subMenu"><a>BEBES</a>
				<ul style="display:none">
				<li><a href="productsBebes_Nacidos.aspx"><i class="icon-chevron-right"></i>RECIEN NACIDOS</a></li>
				<li><a href="ProductsBebe_tapetes.aspx"><i class="icon-chevron-right"></i>TAPETES</a></li>												
				<li><a href="productsBebes_Aprendizaje.aspx"><i class="icon-chevron-right"></i>APRENDIZAJE</a></li>											
			</li>
		</ul>
		<br/>
        </div>
<!-- Sidebar end=============================================== -->
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.html">Inicio</a> <span class="divider">/</span></li>
		<li class="active">Manualidades</li>
    </ul>
	<h3>Manualidades<small class="pull-right"> Mas de 20 articulos </small></h3>	
	<hr class="soft"/>
	<p>Crea un mundo de color con los set de manualidades que tenemos para ti!
	<hr class="soft"/>
	<form class="form-horizontal span6">
		<div class="control-group">
		  <label class="control-label alignL">Sort By </label>
			<select>
              <option>A - Z</option>
              <option>Z - A</option>
              <option>Populares</option>
              <option>Mas vendidos</option>
            </select>
		</div>
	  </form>
	  
<div id="myTab" class="pull-right">
 <a href="#listView" data-toggle="tab"><span class="btn btn-large"><i class="icon-list"></i></span></a>
 <a href="#blockView" data-toggle="tab"><span class="btn btn-large btn-primary"><i class="icon-th-large"></i></span></a>
</div>
<br class="clr"/>
<div class="tab-content">
	<div class="tab-pane" id="listView">
		<div class="row">	  
			<div class="span2">
                <img src="Ima/Niñas%20bellas/manuealidades/Cool%20Maker%20-%20Sew%20Cool.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>Ahora disponible</h3>				
				<hr class="soft"/>
				<h5>Cool Maker - Sew Cool</h5>
				<p>¡Cree mágicamente su propia moda con estilo con la máquina Cool Style de Sew N 'Style! viene con elegantes telas brillantes, patrones y accesorios para crear cinco increíbles proyectos, incluyendo un unicornio de peluche y una bolsa de brillo. ¡Haga los poms del pom con el accesorio del fabricante del pom pom fácil de utilizar para agregar un cierto estilo adicional a sus modas! Personaliza tus resultados finales con cintas y acentos de tela de brillo, y stitch con la cadena de estilo! Para mantener las cosas ordenadas, puede almacenar todo en el cajón de almacenamiento. ¡La Máquina Sew Cool lo hace fácil de diseñar creaciones asombrosas que usted puede usar y compartir! Diseño, coser y decorar con el Cool Maker de la máquina!</p>
				<a class="btn btn-small pull-right" href="product_details.html">Ver detalles</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
			<h3>$1,079.00</h3>
			</label><br/>
			
			  <a href="product_details.html" class="btn btn-large btn-primary"> Agregar <i class=" icon-shopping-cart"></i></a>
			  <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
			
				</form>
			</div>
		</div>
		<hr class="soft"/>
		<div class="row">	  
			<div class="span2">
                <img src="Ima/Niñas%20bellas/manuealidades/Crea%20y%20Diseña%20tu%20Colcha%20-%20Sew%20Cool.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>Ahora disponible</h3>				
				<hr class="soft"/>
				<h5>Crea y Diseña tu Colcha - Sew Cool</h5>
				<p><a class="btn btn-small pull-right" href="product_details.html">Ver detalles</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
				<h3> $499.00</h3>
				
				<a href="product_details.html" class="btn btn-large btn-primary"> Agregar <i class=" icon-shopping-cart"></i></a>
				<a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
				
			</form>
			</div>
		</div>
		<hr class="soft"/>
		<div class="row">	  
			<div class="span2">
                <img src="Ima/Niñas%20bellas/manuealidades/Diseño%20de%20Modas%20-%20Sew%20Cool.jpg"  alt=""/>
			</div>
			<div class="span4">
				<h3>Ahora disponible</h3>				
				<hr class="soft"/>
				<h5>Diseño de Modas - Sew Cool</h5>
				<p><a class="btn btn-small pull-right" href="product_details.html">Ver detalles</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
				<h3> $119.00</h3>
				  <a href="product_details.html" class="btn btn-large btn-primary"> Agregar <i class=" icon-shopping-cart"></i></a>
				  <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
				
			</form>
			</div>
		</div>
		<hr class="soft"/>
		<div class="row">	  
			<div class="span2">
                <img src="Ima/Niñas%20bellas/manuealidades/Doh%20Vinci%20-%20Kit%20de%20decoraciones%20creativas.jpg"  alt=""/>
			</div>
			<div class="span4">
				<h3>Ahora disponible</h3>				
				<hr class="soft"/>
				<h5>Doh Vinci - Kit de decoraciones creativas</h5>
				<p>¡Crea los mejores diseños con Play Doh Vinci! Deja volar tu imaginación y crea divertidos y coloridos diseños con las herramientas de Play Doh Vinci </p>
                <a class="btn btn-small pull-right" href="product_details.html">Ver detalle</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
				<form class="form-horizontal qtyFrm">
				<h3> $669.00 </h3>
				
				<a href="product_details.html" class="btn btn-large btn-primary"> Agregar <i class=" icon-shopping-cart"></i></a>
				<a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
				
				</form>
			</div>
		</div>
	
		<hr class="soft"/>
		<div class="row">	  
			<div class="span2">
                <img src="Ima/Niñas%20bellas/manuealidades/Doh%20Vinci%20-%20Mega%20Estudio%20de%20Arte.jpg"  alt=""/>
			</div>
			<div class="span4">
				<h3>Ahora disponible</h3>				
				<hr class="soft"/>
				<h5>Doh Vinci - Mega Estudio de Arte</h5>
				<p>Play-Doh Doh Vinci Estudio de Arte; dibuja de una manera totalmente diferente y conviértete en un artista Play-Doh DohVinci. Este juego todo en uno viene con todos los materiales que necesitas para dibujos vibrantes que sobresalen; simplemente coloca un tubo en la herramienta de dibujo y aprieta la manija para dibujar vibrantes líneas, puntos, espirales y otros diseños en 3D. Con las herramientas de personalización, añade sellos, capas y otros efectos artísticos. Usa la herramienta de textura para añadir efectos de acuarela al raspar sobre varios colores, este completo juego de arte también incluye 4 cuadros con estilo para dibujar en ellos, un caballete para dibujar y exhibir tus obras y un organizador para guardar tus tubos de masa para dibujar. Prueba también de dibujar sobre madera, lienzo y más.</p>
				<a class="btn btn-small pull-right" href="product_details.html">Ver detalles </a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
				<form class="form-horizontal qtyFrm">
				<h3> $519.00</h3>
				
				<a href="product_details.html" class="btn btn-large btn-primary"> Agregar <i class=" icon-shopping-cart"></i></a>
				<a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
				</form>
			</div>
		</div>
		<hr class="soft"/>
		<div class="row">	  
			<div class="span2">
                <img src="Ima/Niñas%20bellas/manuealidades/Doh%20Vinci%20-%20Trolls%20Wall%20Art.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>Ahora disponible</h3>				
				<hr class="soft"/>
				<h5>Doh Vinci - Trolls Wall Art</h5>
				<p></p>
				<a class="btn btn-small pull-right" href="product_details.html">View Details</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
				<form class="form-horizontal qtyFrm">
				<h3> $379.00</h3>
				
				
				<a href="product_details.html" class="btn btn-large btn-primary"> Agregar <i class=" icon-shopping-cart"></i></a>
				<a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
				
				</form>
			</div>
		</div>
		<hr class="soft"/>
	</div>

	<div class="tab-pane  active" id="blockView">
		<ul class="thumbnails">
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html"> <img src="Ima/Niñas%20bellas/manuealidades/Cool%20Maker%20-%20Sew%20Cool.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Cool Maker - Sew Cool</h5>
				   <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Agregar<i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$1,079.00<a></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html"> <img src="Ima/Niñas%20bellas/manuealidades/Crea%20y%20Diseña%20tu%20Colcha%20-%20Sew%20Cool.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Crea y Diseña tu Colcha - Sew Cool</h5>
				   <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Agregar<i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$499.00</a></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html">  <img src="Ima/Niñas%20bellas/manuealidades/Diseño%20de%20Modas%20-%20Sew%20Cool.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Diseño de Modas - Sew Cool</h5>
				    <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Agregar<i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$119.00</a></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html">  <img src="Ima/Niñas%20bellas/manuealidades/Doh%20Vinci%20-%20Kit%20de%20decoraciones%20creativas.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Doh Vinci - Kit de decoraciones creativas</h5>
				    <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Agregar<i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$669.00</a></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html"> <img src="Ima/Niñas%20bellas/manuealidades/Doh%20Vinci%20-%20Mega%20Estudio%20de%20Arte.jpg"  alt=""/></a>
				<div class="caption">
				  <h5>Doh Vinci - Mega Estudio de Arte</h5>
				    <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Agregar<i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$519.00</a></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html">  <img src="Ima/Niñas%20bellas/manuealidades/Doh%20Vinci%20-%20Trolls%20Wall%20Art.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Doh Vinci - Trolls Wall Art</h5>
				    <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Agregar<i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$379.00</a></h4>
				</div>
			  </div>
			</li>
		  </ul>
	<hr class="soft"/>
	</div>
</div>

	<a href="compair.html" class="btn btn-large pull-right">Compair Product</a>
	<div class="pagination">
			<ul>
			<li><a href="#">&lsaquo;</a></li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">...</a></li>
			<li><a href="#">&rsaquo;</a></li>
			</ul>
			</div>
			<br class="clr"/>
</div>
</div>
</div>
</div>
<!-- MainBody End ============================= -->
<!-- Footer ================================================================== -->
	<div  id="footerSection">
	<div class="container">
		<div class="row">
			<div class="span3">
				<h5>CATEGORIA</h5>
				<a href="login.html">NIÑOS</a>
				<a href="login.html">NIÑAS</a> 
                <a href="login.html">BEBES</a>
			 </div>	
		 </div>
		<p class="pull-right">&copy; Bootshop</p>
	</div><!-- Container End -->
	</div>
<!-- Placed at the end of the document so the pages load faster ============================================= -->
	<script src="themes/js/jquery.js" type="text/javascript"></script>
	<script src="themes/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="themes/js/google-code-prettify/prettify.js"></script>
	
	<script src="themes/js/bootshop.js"></script>
    <script src="themes/js/jquery.lightbox-0.5.js"></script>
	
	<!-- Themes switcher section ============================================================================================= -->
<div id="secectionBox">
<link rel="stylesheet" href="themes/switch/themeswitch.css" type="text/css" media="screen" />
<script src="themes/switch/theamswitcher.js" type="text/javascript" charset="utf-8"></script>
	<div id="themeContainer">
	<div id="hideme" class="themeTitle">Style Selector</div>
	<div class="themeName">Oregional Skin</div>
	<div class="images style">
	<a href="themes/css/#" name="bootshop"><img src="themes/switch/images/clr/bootshop.png" alt="bootstrap business templates" class="active"></a>
	<a href="themes/css/#" name="businessltd"><img src="themes/switch/images/clr/businessltd.png" alt="bootstrap business templates" class="active"></a>
	</div>
	<div class="themeName">Bootswatch Skins (11)</div>
	<div class="images style">
		<a href="themes/css/#" name="amelia" title="Amelia"><img src="themes/switch/images/clr/amelia.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="spruce" title="Spruce"><img src="themes/switch/images/clr/spruce.png" alt="bootstrap business templates" ></a>
		<a href="themes/css/#" name="superhero" title="Superhero"><img src="themes/switch/images/clr/superhero.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="cyborg"><img src="themes/switch/images/clr/cyborg.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="cerulean"><img src="themes/switch/images/clr/cerulean.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="journal"><img src="themes/switch/images/clr/journal.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="readable"><img src="themes/switch/images/clr/readable.png" alt="bootstrap business templates"></a>	
		<a href="themes/css/#" name="simplex"><img src="themes/switch/images/clr/simplex.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="slate"><img src="themes/switch/images/clr/slate.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="spacelab"><img src="themes/switch/images/clr/spacelab.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="united"><img src="themes/switch/images/clr/united.png" alt="bootstrap business templates"></a>
		<p style="margin:0;line-height:normal;margin-left:-10px;display:none;"><small>These are just examples and you can build your own color scheme in the backend.</small></p>
	</div>
	<div class="themeName">Background Patterns </div>
	<div class="images patterns">
		<a href="themes/css/#" name="pattern1"><img src="themes/switch/images/pattern/pattern1.png" alt="bootstrap business templates" class="active"></a>
		<a href="themes/css/#" name="pattern2"><img src="themes/switch/images/pattern/pattern2.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern3"><img src="themes/switch/images/pattern/pattern3.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern4"><img src="themes/switch/images/pattern/pattern4.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern5"><img src="themes/switch/images/pattern/pattern5.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern6"><img src="themes/switch/images/pattern/pattern6.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern7"><img src="themes/switch/images/pattern/pattern7.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern8"><img src="themes/switch/images/pattern/pattern8.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern9"><img src="themes/switch/images/pattern/pattern9.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern10"><img src="themes/switch/images/pattern/pattern10.png" alt="bootstrap business templates"></a>
		
		<a href="themes/css/#" name="pattern11"><img src="themes/switch/images/pattern/pattern11.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern12"><img src="themes/switch/images/pattern/pattern12.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern13"><img src="themes/switch/images/pattern/pattern13.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern14"><img src="themes/switch/images/pattern/pattern14.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern15"><img src="themes/switch/images/pattern/pattern15.png" alt="bootstrap business templates"></a>
		
		<a href="themes/css/#" name="pattern16"><img src="themes/switch/images/pattern/pattern16.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern17"><img src="themes/switch/images/pattern/pattern17.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern18"><img src="themes/switch/images/pattern/pattern18.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern19"><img src="themes/switch/images/pattern/pattern19.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern20"><img src="themes/switch/images/pattern/pattern20.png" alt="bootstrap business templates"></a>
		 
	</div>
	</div>
</div>
<span id="themesBtn"></span>
        </div>
    </form>
</body>
</html>
