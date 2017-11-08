<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Niños_Lanzadores.aspx.cs" Inherits="ProyectoIHC.Niños_Lanzadores" %>

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
		<li><a href="index.html">Home</a> <span class="divider">/</span></li>
		<li class="active">Lanzadores para niños</li>
    </ul>
	<h3> Lanzadores para niños <small class="pull-right"> 25 productos ahora disponible </small></h3>	
	<hr class="soft"/>
	<hr class="soft"/>
	<form class="form-horizontal span6">
		<div class="control-group">
		  <label class="control-label alignL">Filtrar por: </label>
			<select>
              <option> A - Z</option>
              <option> Z - A</option>
              <option>Priduct Stoke</option>
              <option>Price Lowest first</option>
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
                <img src="../../../../Ima/Niños2/Lanzadores/Lanza Dardos Batman.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>Ahora Disponible</h3>				
				<hr class="soft"/>
				<h5>Lanza Dardos Batman</h5>
				<p>
                   Equípate con el estilo de un Súper Héroe DC con este lanzador lleno de acción. Este emocionante juguete viene con el estilo emblemático azul y dorado del famoso símbolo del murciélago

				</p>
				<a class="btn btn-small pull-right" href="product_details.html">Ver detalles</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
			<h3>$279.20</h3>
			<label class="checkbox">
				<input type="checkbox"> Agregar producto
			</label><br/>
			
			  <a href="product_details.html" class="btn btn-large btn-primary"> Agregar <i class=" icon-shopping-cart"></i></a>
			  <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
			
				</form>
			</div>
		</div>
		<hr class="soft"/>
		<div class="row">	  
			<div class="span2">
                <img src="../../../../Ima/Niños2/Lanzadores/Lanza Dardos Boom Co Spinsanity 3x.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>Ahora Disponible</h3>				
				<hr class="soft"/>
				<h5>Lanza Dardos Boom Co Spinsanity 3x </h5>
				<p>
                    ¡Spinsanity 3X de lleva a un nuevo nivel con 3 barriles impresionantes y rotativos para 3 veces la potencia de fuego y velocidades de recarga ultra-rápidas! 10 cámaras de dardos para 30 dardos en total y está motorizado para la acción rápida explosión de fuego Spinsanity 3x tiene una capacidad de 30 dardos y dispara hasta una distancia de 21 metros

				</p>
				<a class="btn btn-small pull-right" href="product_details.html">Ver detalles</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
				<h3> $903.20</h3>
				<label class="checkbox">
				<input type="checkbox">  Agregar producto
				</label><br/>
				
				<a href="product_details.html" class="btn btn-large btn-primary"> Agregar <i class=" icon-shopping-cart"></i></a>
				<a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
				
			</form>
			</div>
		</div>
		<hr class="soft"/>
		<div class="row">	  
			<div class="span2">
               <img src="../../../../Ima/Niños2/Lanzadores/Lanzadardos Boomco Slambow.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>Ahora Disponible</h3>				
				<hr class="soft"/>
				<h5>Blaze Pista Estadio Monster Dome</h5>
				<p>
                    Hoy es un día de carreras en el Estadio Monster Dome y el astuto de Crusher no se detendrá ante nada para ganar a Blaze... ¡incluso si tiene que hacer trampas y construir un robot en forma de tiburón para devorar a Blaze! ¿Conseguirá Blaze pasar junto al tiburón y correr hasta la meta o se hará Crusher con la victoria?.

				</p>
				<a class="btn btn-small pull-right" href="product_details.html">Ver detalles</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
				<h3> $367.20</h3>
				<label class="checkbox">
					<input type="checkbox">  agregar producto
				</label><br/>
				
				  <a href="product_details.html" class="btn btn-large btn-primary"> Agregar <i class=" icon-shopping-cart"></i></a>
				  <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
				
			</form>
			</div>
		</div>
		<hr class="soft"/>
		<div class="row">	  
			<div class="span2">
                <img src="../../../../Ima/Niños2/Lanzadores/Lanzadardos Covenant Carbine Boom Co Halo.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>Ahora Disponible</h3>				
				<hr class="soft"/>
				<h5>Lanzadardos Covenant Carbine Boom Co Halo</h5>
				<p>
                    Lanzadardos favorito entre exploradores Covenant, ¡El lanzador Carbine hará que las fuerzas UNSC no salgan de su guarida! Mantente a una buena distancia y haz uso de la precisión y alcance del lanzador Carbine para mantener la ventaja táctica

				</p>
				<a class="btn btn-small pull-right" href="product_details.html">Ver detalles</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
				<form class="form-horizontal qtyFrm">
				<h3> $447.20</h3>
				<label class="checkbox">
				<input type="checkbox">  Agregar producto
				</label><br/>
				
				<a href="product_details.html" class="btn btn-large btn-primary"> Agregar <i class=" icon-shopping-cart"></i></a>
				<a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
				
				</form>
			</div>
		</div>
	
		<hr class="soft"/>
		<div class="row">	  
			<div class="span2">
                <img src="../../../../Ima/Niños2/Lanzadores/Lanzadardos Nerf Raptorstrike.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>Ahora Disponible</h3>				
				<hr class="soft"/>
				<h5>Lanzadardos Nerf Raptorstrike</h5>
				<p>
                    Precisión basada en datos de pruebas que comparan la exactitud y repetibilidad de los dardos lanzados en condiciones controladas hacia un objetivo a 9 metros de distancia. (La capacidad de acertar a objetivos variará según la habilidad del usuario, la condición del dardo y otros factores.

				</p>
				<a class="btn btn-small pull-right" href="product_details.html">Ver detalles</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
				<form class="form-horizontal qtyFrm">
				<h3> $1,146.75</h3>
				<label class="checkbox">
				<input type="checkbox">  Agregar producto
				</label><br/>
				<a href="product_details.html" class="btn btn-large btn-primary"> Agregar <i class=" icon-shopping-cart"></i></a>
				<a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
				</form>
			</div>
		</div>
		<hr class="soft"/>
		<div class="row">	  
			<div class="span2">
                <img src="../../../../Ima/Niños2/Lanzadores/Lanzadardos Predator Zuru X-Shot Bug Attack.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>Ahora Disponible</h3>				
				<hr class="soft"/>
				<h5>Lanzadardos Predator Zuru X-Shot Bug Attack </h5>
				<p>
                    Descripción   Dardos galardonados. Dispara hasta 18 metros

				</p>
				<a class="btn btn-small pull-right" href="product_details.html">Ver detalles</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
				<form class="form-horizontal qtyFrm">
				<h3> $239.20</h3>
				<label class="checkbox">
				<input type="checkbox">  Agregar producto
				</label><br/>
				
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
				<a href="product_details.html"><img src="../../../../Ima/Niños2/Lanzadores/Lanza Dardos Batman.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Lanza Dardos Batman</h5>
				   <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Agregar <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$279.20</a></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html"><img src="../../../../Ima/Niños2/Lanzadores/Lanzadardos Rapid Fire Zuru X-Shot Bug Attack.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Lanzadardos Rapid Fire Zuru</h5>
				   <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Agregar <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$191.20</a></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html"><img src="../../../../Ima/Niños2/Lanzadores/Lanzadardos Boomco Slambow.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Lanzadardos Boomco Slambow</h5>
				    <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Agregar <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$367.20</a></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html"><img src="../../../../Ima/Niños2/Lanzadores/Lanzadardos Predator Zuru X-Shot Bug Attack.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Lanzadardos Predator Zuru X-Shot Bug Attack</h5>
				    <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Agregar <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$239.20</a></h4>
				</div>
			  </div>
			</li>
            <li class="span3">
                <div class="thumbnail">
                    <a href="product_details.html"><img src="../../../../Ima/Niños2/Lanzadores/Lanzadardos Covenant Carbine Boom Co Halo.jpg" alt="" /></a>
                    <div class="caption">
                        <h5>Lanzadardos Covenant Carbine Boom</h5>
                        <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$447.20</a></h4>
                    </div>
                </div>
            </li>
            <li class="span3">
                <div class="thumbnail">
                    <a href="product_details.html"><img src="../../../../Ima/Niños2/Lanzadores/Lanzadardos Nerf Raptorstrike.jpg" alt="" /></a>
                    <div class="caption">
                        <h5>Lanzadardos Nerf Raptorstrike</h5>
                        <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$1,146.75</a></h4>
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
</body>
</html>