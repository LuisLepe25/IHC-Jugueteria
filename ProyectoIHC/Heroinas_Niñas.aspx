﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Heroinas_Niñas.aspx.cs" Inherits="ProyectoIHC.Heroinas_Niñas" %>

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
    <a class="brand" href="index.html"> <img width="300" height="350" src="Ima/deli.png" alt="Bootsshop"/></a>
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
	 <li class=""><a href="Encuesta.aspx">Encuesta</a></li>
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
		<li class="active">Heroinas</li>
    </ul>
	<h3> Heroinas<small class="pull-right"> Mas de 20 articulos </small></h3>	
	<hr class="soft"/>
	<p>
		Combate las fuerzas del mal junto con las heroinas que tenemos para ti!
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
                <img src="Ima/Niñas%20bellas/Heroinas/Accesorios%20Super%20Girl.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>Ahora disponible</h3>				
				<hr class="soft"/>
				<h5>Accesorios Super Girl		</h5>
				<p>Tomar en misiones y ser el superhéroe con el tamaño infantil DC Super Hero Girls ™ equipo!</p>
				<a class="btn btn-small pull-right" href="product_details.html">Ver detalles</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
			<h3> $299.00</h3>
			</label><br/>
			
			  <a href="product_details.html" class="btn btn-large btn-primary"> Agregar <i class=" icon-shopping-cart"></i></a>
			  <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
			
				</form>
			</div>
		</div>
		<hr class="soft"/>
		<div class="row">	  
			<div class="span2">
                <img src="Ima/Niñas%20bellas/Heroinas/Amigas%20Barbie%20Escuadron%20Secreto.jpg"  alt=""/>
			</div>
			<div class="span4">
				<h3>Ahora disponible</h3>				
				<hr class="soft"/>
				<h5>Amigas Barbie "Escuadron Secreto"</h5>
				<p>De la Pelicula Barbie Escuadron Secreto Barbie, Teresa y Renee se convierten en agentes secretos encubiertos de esta agencia ultra secreta de espionaje y además deberán ponerse a prueba como excelentes gimnastas.</p>
				<a class="btn btn-small pull-right" href="product_details.html">Ver detalles</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
				<h3> $209.00</h3>
				
				<a href="product_details.html" class="btn btn-large btn-primary"> Agregar <i class=" icon-shopping-cart"></i></a>
				<a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
				
			</form>
			</div>
		</div>
		<hr class="soft"/>
		<div class="row">	  
			<div class="span2">
                <img src="Ima/Niñas%20bellas/Heroinas/Barbie%20Agente%20Secreto.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>Ahora disponible</h3>				
				<hr class="soft"/>
				<h5>Barbie Agente Secreto</h5>
				<p>De la Pelicula Barbie Escuadron Secreto Barbie, Teresa y Renee se convierten en agentes secretos encubiertos de esta agencia ultra secreta de espionaje y además deberán ponerse a prueba como excelentes gimnastas.</p>
                <a class="btn btn-small pull-right" href="product_details.html">Ver detalles</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
				<h3> $359.00</h3>
				  <a href="product_details.html" class="btn btn-large btn-primary"> Agregar <i class=" icon-shopping-cart"></i></a>
				  <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
				
			</form>
			</div>
		</div>
		<hr class="soft"/>
		<div class="row">	  
			<div class="span2">
                <img src="Ima/Niñas%20bellas/Heroinas/Batgirl%20-%20Batilanzador.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>Ahora disponible</h3>				
				<hr class="soft"/>
				<h5>Batgirl - Batilanzador</h5>
				<p>Explosión en la aventura con la muñeca de acción Batgirl!</p>
                <a class="btn btn-small pull-right" href="product_details.html">Ver detalle</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
				<form class="form-horizontal qtyFrm">
				<h3> $410.00 </h3>
				
				<a href="product_details.html" class="btn btn-large btn-primary"> Agregar <i class=" icon-shopping-cart"></i></a>
				<a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
				
				</form>
			</div>
		</div>
	
		<hr class="soft"/>
		<div class="row">	  
			<div class="span2">
                <img src="Ima/Niñas%20bellas/Heroinas/Batichica.jpg"   alt=""/>
			</div>
			<div class="span4">
				<h3>Ahora disponible</h3>				
				<hr class="soft"/>
				<h5>Batichica</h5>
				<p></p>
				<a class="btn btn-small pull-right" href="product_details.html">Ver detalles </a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
				<form class="form-horizontal qtyFrm">
				<h3> $239.00</h3>
				
				<a href="product_details.html" class="btn btn-large btn-primary"> Agregar <i class=" icon-shopping-cart"></i></a>
				<a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
				</form>
			</div>
		</div>
		<hr class="soft"/>
		<div class="row">	  
			<div class="span2">
                <img src="Ima/Niñas%20bellas/Heroinas/Chicas%20Superpoderosas%20Bellota%20-%20Muñeca%20Grande.jpg"  alt=""/>
			</div>
			<div class="span4">
				<h3>Ahora disponible</h3>				
				<hr class="soft"/>
				<h5>Chicas Superpoderosas Bellota </h5>
				<p></p>
				<a class="btn btn-small pull-right" href="product_details.html">View Details</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
				<form class="form-horizontal qtyFrm">
				<h3> $429.00</h3>
				
				
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
				<a href="product_details.html"><img src="Ima/Niñas%20bellas/Heroinas/Accesorios%20Super%20Girl.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Accesorios Super Girl</h5>
				   <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a>  <a class="btn btn-primary" href="#">$299.00<a></h4>
				</div>
                  <a class="btn add-to-cart" href="javascript:void(0);">Agregar<i class="icon-shopping-cart"></i></a> 
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html"><img src="Ima/Niñas%20bellas/Heroinas/Amigas%20Barbie%20Escuadron%20Secreto.jpg"  alt=""/></a>
				<div class="caption">
				  <h5>Amigas  Barbie Escuadron Secreto</h5>
				   <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a>  <a class="btn btn-primary" href="#">$209.00</a></h4>
				</div>
                  <a class="btn add-to-cart" href="javascript:void(0);">Agregar<i class="icon-shopping-cart"></i></a> 
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html">  <img src="Ima/Niñas%20bellas/Heroinas/Barbie%20Agente%20Secreto.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Barbie Agente Secreto</h5>
				    <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a>  <a class="btn btn-primary" href="#">$359.00</a></h4>
				</div>
                  <a class="btn add-to-cart" href="javascript:void(0);">Agregar<i class="icon-shopping-cart"></i></a> 
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html"> <img src="Ima/Niñas%20bellas/Heroinas/Batgirl%20-%20Batilanzador.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Batgirl-Batilanzador</h5>
				    <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn btn-primary" href="#">$410.00</a></h4>
				</div>
                  <a class="btn add-to-cart" href="javascript:void(0);">Agregar<i class="icon-shopping-cart"></i></a> 
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html"> <img src="Ima/Niñas%20bellas/Heroinas/Batichica.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Batichica</h5>
				    <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a>  <a class="btn btn-primary" href="#">$239.00</a></h4>
				</div>
                  <a class="btn add-to-cart" href="javascript:void(0);">Agregar<i class="icon-shopping-cart"></i></a> 
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html"> <img src="Ima/Niñas%20bellas/Heroinas/Chicas%20Superpoderosas%20Bellota%20-%20Muñeca%20Grande.jpg"  alt=""/></a>
				<div class="caption">
				  <h5>Chicas Superpoderosa Bellota</h5>
				    <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn btn-primary" href="#">$429.00</a></h4>
				</div>
                  <a class="btn add-to-cart" href="javascript:void(0);">Agregar<i class="icon-shopping-cart"></i></a> 
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
