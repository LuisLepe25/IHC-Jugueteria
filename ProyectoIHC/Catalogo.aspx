<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Catalogo.aspx.cs" Inherits="ProyectoIHC.Catalogo" %>

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
        <div>
            <!-- #include file ="includes/encabezado.inc" -->
            <!-- Header End====================================================================== -->
            <div id="mainBody">
	            <div class="container">
	                <div class="row">
                        <!-- Sidebar ================================================== -->
	                        <!-- #include file ="includes/sidebar.inc" -->
                        <!-- Sidebar end=============================================== -->
                        <form id="form1" runat="server">
	                        <div class="span9">
                                <!--
                                <ul class="breadcrumb">
		                            <li><a href="JuguetesRecomendacion.aspx">Inicio</a> <span class="divider">/</span></li>
		                            <li class="active">Figuras de accion para niños</li>
                                </ul>
                                -->
	                            <h3>CATÁLOGO <small id="numArticulos" runat="server" class="pull-right"></small></h3>	
	                            <hr class="soft"/>
                                    <div class="span5 navMenu">
                                            <asp:HyperLink runat="server" ID="hpvAnt1" text="&lsaquo;" NavigateUrl="~/Catalogo.aspx?page=1"/>
                                            <asp:HyperLink runat="server" ID="HyperLink2" text="1" NavigateUrl="~/Catalogo.aspx?page=1"/>
                                            <asp:HyperLink runat="server" ID="HyperLink3" text="2" NavigateUrl="~/Catalogo.aspx?page=2"/>
                                            <asp:HyperLink runat="server" ID="HyperLink4" text="3" NavigateUrl="~/Catalogo.aspx?page=3"/> 
                                            <asp:HyperLink runat="server" ID="HyperLink5" text="4" NavigateUrl="~/Catalogo.aspx?page=4"/>
                                            <asp:HyperLink runat="server" ID="HyperLink6" text="5" NavigateUrl="~/Catalogo.aspx?page=5"/>   
                                            <asp:HyperLink runat="server" ID="hpvDes1" text="&rsaquo;" NavigateUrl="~/Catalogo.aspx?page=5"/>
                                    </div>
                                    <div id="myTab" class="pull-right">
                                        <a id="listViewA" href="#listView" data-toggle="tab"><span class="btn btn-large"><i class="icon-list"></i></span></a>
                                        <a id="blockViewA" href="#blockView" data-toggle="tab"><span class="btn btn-large btn-primary"><i class="icon-th-large"></i></span></a>
                                    </div>
	                            
                                <br class="clr"/>
                                <div class="tab-content">
                                    <hr runat="server" id="Hr1" visible="false" class="soft"/>
                                    <asp:Label runat="server" ID="lblNoContent" Visible="false" text="No hay contenido"/>
                                    <hr runat="server" id="Hr2" visible="false" class="soft"/>
                                    <asp:Repeater ID="repJueguetesListView" runat="server" OnItemDataBound="repJueguetesListView_ItemDataBound">
                                        <HeaderTemplate>
                                            <div class="tab-pane" id="listView">
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                                <hr class="soft"/>
		                                        <div class="row">
                                                    <div class="span2" >
                                                        <asp:image ID="Image1" runat="server" ImageUrl ='algoQuecambiara.aspx' CssClass="fixImgRep"/>
                                                        <!--<img src="Ima/Niñas%20bellas/manuealidades/Doh%20Vinci%20-%20Trolls%20Wall%20Art.jpg" alt=""/>-->
                                                    </div>
			                                        <div class="span4">
				                                        <h3><%# Eval("nombreJuguete") %></h3>				    
				                                        <hr class="soft"/>
				                                        <h5>Doh Vinci - Trolls Wall Art</h5>
				                                        <p class="fixParagraph"><%# Eval("descripcion") %></p>
				                                        <br class="clr"/>
			                                        </div>
			                                        <div class="span3 alignR form-horizontal qtyFrm">
				                                        <h3>$<%# Eval("precio") %></h3>
                                                        <img style="display:none;" src="Ima/Niñas%20bellas/manuealidades/Doh%20Vinci%20-%20Trolls%20Wall%20Art.jpg" alt=""/>
				                                        <a class="btn btn-large btn-primary cd-add-to-cart" data-id="<%# Eval("id") %>" data-name="<%# Eval("nombreJuguete") %>" data-price="<%# Eval("precio") %>">Agregar<i class="icon-shopping-cart"></i></a>
			                                        </div>
                                                </div>
		                                        <hr class="soft"/>
                                        </ItemTemplate>
                                        <FooterTemplate>
	                                        </div>
                                        </FooterTemplate>
                                    </asp:Repeater>
                                    <asp:Repeater ID="repJueguetesBlockView" runat="server" OnItemDataBound="repJueguetesBlockView_ItemDataBound">
                                        <HeaderTemplate>
                                            <div class="tab-pane  active" id="blockView">
                                                <hr class="soft"/>
                                                <ul class="thumbnails">
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                                <li class="span3">
			                                        <div class="thumbnail">
                                                    <!--<img src="Ima/Niñas%20bellas/manuealidades/Doh%20Vinci%20-%20Trolls%20Wall%20Art.jpg" alt=""/>-->
                                                    <asp:image ID="Image2" runat="server" ImageUrl ='algoQuecambiara.aspx' CssClass="fixImgRep"/>
				                                    <div class="caption">
				                                        <h5 class="fixBlockView"><%# Eval("nombreJuguete") %></h5>
				                                        <h4 style="text-align:center">
                                                            <a class="precios btn-primary" >$<%# Eval("precio") %></a></h4>
				                                    </div>
                                                    <a class="btn cd-add-to-cart" data-id="<%# Eval("id") %>" data-name="<%# Eval("nombreJuguete") %>" data-price="<%# Eval("precio") %>">Agregar<i class="icon-shopping-cart"></i></a>
			                                        </div>
			                                    </li>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                                </ul>
	                                        <hr class="soft"/>
	                                    </div>
                                        </FooterTemplate>
                                    </asp:Repeater>
                                </div>

                                <div class="span5 navMenu">
                                    <asp:HyperLink runat="server" ID="hpvAnt2" text="&lsaquo;" NavigateUrl="~/Catalogo.aspx?page=1"/>
                                    <asp:HyperLink runat="server" ID="HyperLink7" text="1" NavigateUrl="~/Catalogo.aspx?page=1"/>
                                    <asp:HyperLink runat="server" ID="HyperLink8" text="2" NavigateUrl="~/Catalogo.aspx?page=2"/>
                                    <asp:HyperLink runat="server" ID="HyperLink9" text="3" NavigateUrl="~/Catalogo.aspx?page=3"/> 
                                    <asp:HyperLink runat="server" ID="HyperLink10" text="4" NavigateUrl="~/Catalogo.aspx?page=4"/>
                                    <asp:HyperLink runat="server" ID="HyperLink11" text="5" NavigateUrl="~/Catalogo.aspx?page=5"/>
                                    <asp:HyperLink runat="server" ID="hpvDes2" text="&rsaquo;" NavigateUrl="~/Catalogo.aspx?page=5"/>
                                </div>
			                    <br class="clr"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- MainBody End ============================= -->
        <!-- Footer ================================================================== -->
	        <div  id="footerSection">
	        <div class="container">
		        <div class="row">
			        <div class="span4">
				        <h5>CATEGORIA<div class="span4">
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
	        <!--<script src="themes/js/jquery.js" type="text/javascript"></script>
	        <script src="themes/js/bootstrap.min.js" type="text/javascript"></script>-->
            <script src="js/jquery-3.2.1.js"></script>
            <script src="js/bootstrap.min.js"></script>
	        <script src="themes/js/bootshop.js"></script>
    </body>
</html>
