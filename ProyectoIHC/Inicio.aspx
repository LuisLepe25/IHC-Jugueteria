<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="ProyectoIHC.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Deilusiones - inicio</title>
    <!-- #include file ="includes/generalHeader.inc" -->
    <link href="css/FixBlockView.css" rel="stylesheet" />
    <link href="css/carritoChido.css" rel="stylesheet" />
    <script src="js/carritoChido.js"></script>
</head>
<body>
    <div runat="server" id="carrito" class="cd-cart-container empty">
	        <a href="#0" class="cd-cart-trigger">
		        Cart
		        <ul class="count">
			        <li runat="server" id="conteo1">0</li>
			        <li runat="server" id="conteo2">0</li>
		        </ul>
	        </a>

	        <div class="cd-cart">
		        <div class="wrapper">
			        <header>
				        <h2>Cart</h2>
				        <span class="undo">Item removed. <a href="#0">Undo</a></span>
			        </header>
			
			        <div class="body">
				        <ul runat="server" id="cuerpoCarrito">
				        </ul>
			        </div>

			        <footer>
				        <a href="carrito.aspx" class="checkout"><em>Enviar cotizacion por correo - $<span runat="server" id="precioTotalSpan">0</span></em></a>
			        </footer>
		        </div>
            </div>
        </div>
    <!-- #include file ="includes/encabezado.inc" -->
    <!-- Header End====================================================================== -->
    <div id="carouselBlk">
	    <div id="myCarousel" class="carousel slide">
		    <div class="carousel-inner">
		        <div class="item active">
		            <div class="container">
			            <a href="Encuesta.aspx"><img style="width:100%" src="Ima\1.png" alt=""/></a>
			            <div class="carousel-caption">
				            <h4>Second Thumbnail label</h4>
				            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				        </div>
		            </div>
		        </div>
                <div class="item">
                    <div class="container">
                        <a href="Encuesta.aspx"><img style="width:100%" src="Ima\2.png" alt=""/></a>
	                    <div class="carousel-caption">
		                    <h4>Second Thumbnail label</h4>
		                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
	                    </div>
                    </div>
                </div>
		      <div class="item">
		      <div class="container">
			    <a href="Encuesta.aspx"><img src="Ima\3.png" alt=""/></a>
			    <div class="carousel-caption">
				      <h4>Second Thumbnail label</h4>
				      <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				    </div>
			
		      </div>
		      </div>
		       <div class="item">
		       <div class="container">
			    <a href="Encuesta.aspx"><img src="Ima\4.png" alt=""/></a>
			    <div class="carousel-caption">
				      <h4>Second Thumbnail label</h4>
				      <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				    </div>
		   
		      </div>
		      </div>
		       <div class="item">
		       <div class="container">
			    <a href="Encuesta.aspx"><img src="Ima\LEGO.png" alt=""/></a>
			    <div class="carousel-caption">
				      <h4>Second Thumbnail label</h4>
				      <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
			    </div>
		      </div>
		      </div>
		       <div class="item">
		       <div class="container">
			    <a href="Encuesta.aspx"><img src="Ima\Fisher Price.png" alt=""/></a>
			    <div class="carousel-caption">
				      <h4>Second Thumbnail label</h4>
				      <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				    </div>
		      </div>
		      </div>
		    </div>
		    <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		    <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
	      </div> 
    </div>
<div id="mainBody">
	<div class="container">
	<div class="row">
<!-- Sidebar ================================================== -->
    <!-- #include file ="includes/sidebar.inc" -->
<!-- Sidebar end=============================================== -->
		<div class="span9">		
			<div class="well well-small">
			<h4>Novedades <small class="pull-right">200+ novedades</small></h4>
			<div class="row-fluid">
			<div id="featured" class="carousel slide">
			<div class="carousel-inner">
			  <div class="item active">
			  <ul class="thumbnails">
				<li class="span3">
				  <div class="thumbnail">
				  <i class="tag"></i>
					<img class="fixImgRepIndex" src="ima\WarMachine.jpg" alt="" />
					<div class="caption">
					  <h5 class="fixParagraphIndex">War Machine Electronico</h5>
					  <h4><a>Precio:</a><span class="pull-right">$222.00</span></h4>
					</div>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
				  <i class="tag"></i>
					<img class="fixImgRepIndex" src="Ima\polly.jpg" alt=""/>
					<div class="caption">
					  <h5 class="fixParagraphIndex">Polly Pocket - Vehículo Desfile de Helados</h5>
					  <h4><a>Precio:</a><span class="pull-right">$429.00</span></h4>
					</div>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
				  <i class="tag"></i>
					<img class="fixImgRepIndex" src="ima\Miinicon.jpg" alt=""/>
					<div class="caption">
					  <h5 class="fixParagraphIndex">Transformers Miinicon</h5>
					   <h4><a>Precio:</a><span class="pull-right">$222.00</span></h4>
					</div>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
				  <i class="tag"></i>
					<img class="fixImgRepIndex" src="Ima\p.jpg" alt=""/>
					<div class="caption">
					  <h5 class="fixParagraphIndex">Surtido Polly Pocket Modas</h5>
					   <h4><a>Precio:</a><span class="pull-right">$119.00</span></h4>
					</div>
				  </div>
				</li>
			  </ul>
			  </div>
			   <div class="item">
			  <ul class="thumbnails">
				<li class="span3">
				  <div class="thumbnail">
				  <i class="tag"></i>
					<img class="fixImgRepIndex" src="ima\Tortu.jpg" alt=""/>
					<div class="caption">
					  <h5 class="fixParagraphIndex">Tortugas Ninja Figuras Mutations Tortuga a Tortuga Ninja</h5>
					  <h4><a>Precio:</a><span class="pull-right">$222.00</span></h4>
					</div>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
				  <i class="tag"></i>
					<img class="fixImgRepIndex" src="Ima\po.jpg" alt=""/>
					<div class="caption">
					  <h5 class="fixParagraphIndex">Peluche Mediano - My Little Pony</h5>
					  <h4><a>Precio:</a><span class="pull-right">$255.00</span></h4>
					</div>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<img class="fixImgRepIndex" src="Ima\pr.jpg" alt=""/>
					<div class="caption">
					  <h5 class="fixParagraphIndex">Pinkie Pie - Basico</h5>
					   <h4><a>Precio:</a><span class="pull-right">$229.00</span></h4>
					</div>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<img class="fixImgRepIndex" src="ima\Death.jpg" alt=""/>
					<div class="caption">
					  <h5 class="fixParagraphIndex">LEGO Star Wars Death Star </h5>
					   <h4><a>Precio:</a><span class="pull-right">$222.00</span></h4>
					</div>
				  </div>
				</li>
			  </ul>
			  </div>
			   <div class="item">
			  <ul class="thumbnails">
				<li class="span3">
				  <div class="thumbnail">
					<img class="fixImgRepIndex" src="Ima\sp.jpg" alt=""/>
					<div class="caption">
					  <h5 class="fixParagraphIndex">Super Hero Girls</h5>
					  <h4><a>Precio:</a><span class="pull-right">$239.00</span></h4>
					</div>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<img class="fixImgRepIndex" src="ima\10v.jpg" alt=""/>
					<div class="caption">
					  <h5 class="fixParagraphIndex">Hot Wheels Pack 10 Vehículos Varios ModeloS</h5>
					  <h4><a>Precio:</a><span class="pull-right">$222.00</span></h4>
					</div>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<img class="fixImgRepIndex" src="Ima\f.jpg" alt=""/>
					<div class="caption">
					  <h5 class="fixParagraphIndex">Elsa Frozen Canta Conmigo 16 "</h5>
					   <h4><a>Precio:</a><span class="pull-right">$1629.00</span></h4>
					</div>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<img class="fixImgRepIndex" src="ima\Bzombie.jpg" alt=""/>
					<div class="caption">
					  <h5 class="fixParagraphIndex">Ballesta Nerf Zombie Strike</h5>
					   <h4><a>Precio:</a><span class="pull-right">$222.00</span></h4>
					</div>
				  </div>
				</li>
			  </ul>
			  </div>
			   <div class="item">
			  <ul class="thumbnails">
				<li class="span3">
				  <div class="thumbnail">
					<img class="fixImgRepIndex" src="Ima\jet.jpg" alt=""/>
					<div class="caption">
					  <h5 class="fixParagraphIndex">Jet de lujo de Barbie</h5>
					  <h4><a>Precio:</a><span class="pull-right">$1,579.00</span></h4>
					</div>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<img class="fixImgRepIndex" src="ima\Lanza1.jpg" alt=""/>
					<div class="caption">
					  <h5  class="fixParagraphIndex">Lanzadardos Boomco Slambow</h5>
					  <h4><a>Precio:</a><span class="pull-right">$222.00</span></h4>
					</div>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<img class="fixImgRepIndex" src="Ima\casa.jpg" alt=""/>
					<div class="caption">
					  <h5 class="fixParagraphIndex">Barbie - Casa de los Sueños</h5>
					   <h4><a>Precio:</a><span class="pull-right">$3,289.00</span></h4>
					</div>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<img class="fixImgRepIndex" src="ima\PistaT.jpg" alt=""/>
					<div class="caption">
					  <h5 class="fixParagraphIndex">Hot Wheels City Pista Tiburón Devorador</h5>
					   <h4><a>Precio:</a><span class="pull-right">$222.00</span></h4>
					</div>
				  </div>
				</li>
			  </ul>
			  </div>
			  </div>
			  <a class="left carousel-control" href="#featured" data-slide="prev">‹</a>
			  <a class="right carousel-control" href="#featured" data-slide="next">›</a>
			  </div>
			  </div>
		</div>
		<h4>Mas juguetes </h4>
			  <ul class="thumbnails">
				<li class="span3">
				  <div class="thumbnail">
					<img class="fixImgRep" src="ima\Lanza2.jpg" alt=""/>
					<div class="caption">
					  <h5 class="fixParagraphIndex">Lanzador Nerf Zombie Strike Crosscut</h5>
					  <h4 style="text-align:center">
                          <a class="precios btn-primary">$335</a></h4>
					</div>
                    <a class="btn cd-add-to-cart" data-id="1990" data-name="Lanzador Nerf Zombie Strike Crosscut" data-price="335">Agregar<i class="icon-shopping-cart"></i></a>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<img class="fixImgRep" src="Ima\oso.jpg" alt=""/>
					<div class="caption">
					  <h5 class="fixParagraphIndex">F-P Brilliant Basics Primera Osito</h5>
					  <p> 
					  </p>
					 <h4 style="text-align:center">
                          <a class="precios btn-primary">$210.00</a></h4>
					</div>
                      <a class="btn cd-add-to-cart" data-id="1991" data-name="F-P Brilliant Basics Primera Osito" data-price="210">Agregar<i class="icon-shopping-cart"></i></a>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<img class="fixImgRep" src="ima\Rojo.jpg" alt=""/>
					<div class="caption">
					  <h5 class="fixParagraphIndex">Figura Electrónica Hasbro Star Wars Elite Praetorian Guard</h5>
					  <p> 
					  </p>
					   <h4 style="text-align:center">
                           <a class="precios btn-primary">$549.00</a></h4>
					</div>
                    <a class="btn cd-add-to-cart" data-id="1992" data-name="Figura Electrónica Hasbro Star Wars Elite Praetorian Guard" data-price="549">Agregar<i class="icon-shopping-cart"></i></a>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<img class="fixImgRep" src="Ima\baile.jpg" alt=""/>
					<div class="caption">
					  <h5 class="fixParagraphIndex">Barbie Surtido - Sets de Juego</h5>
					  <h4 style="text-align:center">
                          <a class="precios btn-primary">$264.00</a></h4>
					</div>
                      <a class="btn cd-add-to-cart" data-id="1993" data-name="Barbie Surtido - Sets de Juego" data-price="264">Agregar<i class="icon-shopping-cart"></i></a>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<img class="fixImgRep" src="Ima\bebe.jpg" alt=""/>
					<div class="caption">
					  <h5 class="fixParagraphIndex">Corn Popper - Fisher Price</h5>
					  <h4 style="text-align:center">
                          <a class="precios btn-primary">$222.00</a></h4>
					</div>
                      <a class="btn cd-add-to-cart" data-id="1994" data-name="Corn Popper - Fisher Price" data-price="222">Agregar<i class="icon-shopping-cart"></i></a>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<img class="fixImgRep" src="ima\jug.jpg" alt=""/>
					<div class="caption">
					  <h5 class="fixParagraphIndex">Juguettos T-Rex Transformable</h5>
					   <h4 style="text-align:center">
                           <a class="precios btn-primary">$672</a></h4>
					</div>
                      <a class="btn cd-add-to-cart" data-id="1995" data-name="Juguettos T-Rex Transformable" data-price="672">Agregar<i class="icon-shopping-cart"></i></a>
				  </div>
				</li>
			  </ul>	

		</div>
		</div>
	</div>
</div>
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
			<div id="socialMedia" class="span3 pull-right">
				<h5>SOCIAL MEDIA </h5>
				<a href="#"><img width="60" height="60" src="themes/images/facebook.png" title="facebook" alt="facebook"/></a>
				<a href="#"><img width="60" height="60" src="themes/images/twitter.png" title="twitter" alt="twitter"/></a>
				<a href="#"><img width="60" height="60" src="themes/images/youtube.png" title="youtube" alt="youtube"/></a>
			 </div> 
		 </div>
	</div><!-- Container End -->
	</div>
<!-- Placed at the end of the document so the pages load faster ============================================= -->
	<script src="themes/js/jquery.js" type="text/javascript"></script>
	<script src="themes/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="themes/js/google-code-prettify/prettify.js"></script>
	
	<script src="themes/js/bootshop.js"></script>
    <script src="themes/js/jquery.lightbox-0.5.js"></script>
	

</body>
</html>