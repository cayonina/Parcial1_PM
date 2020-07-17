<html>
<?php
include "conexion.inc.php";
$archivo = "verifica.inc.php";
?>
<head>
<link rel="stylesheet" href="css/miestilo.css"/>

</head>
<body>
  
  <form action="login.php" method="GET">
    <h1 id="login">LOGIN</h1>
  <?php
  include $archivo;
  ?>
  <input type="hidden" value="<?php echo $archivo;?>" name="archivo"/>
    <div align="center">
       <input type="submit" value="ingreso" name="ingreso" />
    </div>
  </form>
</div>

</body>
</html>