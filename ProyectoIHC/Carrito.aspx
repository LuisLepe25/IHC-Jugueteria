<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="ProyectoIHC.Carrito" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Enviar cotizacion a su correo</title>
        <!-- #include file ="includes/generalHeader.inc" -->
        <link href="css/FixBlockView.css" rel="stylesheet" />
        <link href="css/carrito.css" rel="stylesheet" />
        <link href="css/carritoChido.css" rel="stylesheet" />
        <script src="js/carritoChido.js"></script>
    </head>
    <body>
        <form id="form1" runat="server">
        <!-- #include file ="includes/encabezado.inc" -->
        <!-- Header End====================================================================== -->
        <div id="mainBody">
	        <div class="container">
	            <div class="row">
                    <!-- Sidebar ================================================== -->
                        <!-- #include file ="includes/sidebar.inc" -->
                    <!-- Sidebar end=============================================== -->
	                <div class="span9" id="mainCol">
                        <ul class="breadcrumb">
		                    <li><a href="index.html">Inicio</a> <span class="divider">/</span></li>
		                    <li class="active">Carrito</li>
                        </ul>
	                    <h3> Tu carrito </h3>	
	                    <hr class="soft"/>
	                    <h5>Productos</h5>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="customers">
                                <Columns>
                                    <asp:BoundField DataField="nombreProducto" HeaderText="Nombre producto"/>
                                    <asp:BoundField DataField="precio" HeaderText="Precio" DataFormatString="{0:c}"/>
                                </Columns>
                            </asp:GridView>
                            <br/>
                            <h5><center>¿Desea recibir la cotizacion en su correo electronico?</center></h5>
                            <p>
                                <center>Si es asi favor de ingresar su correo.</center>
	                        </p>
                            <p>
                                <center>
                                    <asp:Label ID="Label1" runat="server" Text="Correo:"></asp:Label>
                                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="#000099" BorderStyle="None"></asp:TextBox>
                                </center>
	                        </p>
                            <p>
                                <center>
                                    <asp:Button ID="Button1" runat="server" Text="Enviar" OnClick="Button1_Click" />
                                </center>
	                        </p>
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

        </form>
    </body>
</html>
