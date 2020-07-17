<html>
<?php
include "conexion.inc.php";
$ci=$_GET["ci"];
$clave=$_GET["clave"];
        $query=mysqli_query($conn, "SELECT * FROM usuario u, identificador i WHERE u.ci LIKE '$ci' AND u.ci LIKE i.ci");
        while($query=mysqli_fetch_array($query)){
            $nom = $query['nombre'];
            $col = $query['color'];
            $img = $query['imagen'];
        }        
?>
<head>
<script>
function nobackbutton(){	
       window.location.hash="no-back-button";
       window.location.hash="Again-No-back-button" 
       window.onhashchange=function(){window.location.hash="no-back-button";}
    }
    document.oncontextmenu = function(){return false;}

</script>
<link rel="stylesheet" href="estilos/style.css"/>
</head>

<body bgcolor="<?php echo $col;?>" onload="nobackbutton();">
<?php
  include "cabecera.inc.php";
  ?>
<div id="contenedor">
 
    <img id="perfil" src="imagenes/<?php echo $img;?>">
  
        <h2>Bienvenido: </h2>
        <h3>
          <?php
          echo $nom;
          ?>
        </h3>
        
      <br>
  <?php
  include "contenedor.inc.php";
  include "pie.inc.php";
?>
</div>
</body>
</html>