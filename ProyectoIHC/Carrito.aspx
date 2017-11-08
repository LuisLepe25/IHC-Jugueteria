<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="ProyectoIHC.Carrito" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Figuras de accion</title>
        <!-- #include file ="includes/generalHeader.inc" -->
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
        <link href="css/carrito.css" rel="stylesheet" />
        <script src="js/carrito.js"></script>
    </head>
    <body>
        <form id="form1" runat="server">
        <!-- #include file ="includes/encabezado.inc" -->
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
	<div class="span9" id="mainCol">
    <ul class="breadcrumb">
		<li><a href="index.html">Inicio</a> <span class="divider">/</span></li>
		<li class="active">Carrito</li>
    </ul>
	<h3> Tu carrito </h3>	
	<hr class="soft"/>
	<h5>Productos</h5>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#000099" BorderStyle="None" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        </asp:GridView>
        <table id="customers">
            <tr>
                <th>Productos</th>
                <th>Precio</th>
            </tr>
            <tr>
                <td>Avengers Falcon Figura Electrónica</td>
                <td>$672.79</td>
            </tr>
            <tr>
                <td>Batman V Superman Figura Superhéroe</td>
                <td>$358.30</td>
            </tr>
            <tr>
                <td>Adriennes Bath Bizz Project MC2</td>
                <td>$529.00</td>
            </tr>
        </table>
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
</div></div>
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
