<?php
include "conexion.inc.php";
$ci=$_GET["ci"];
$clave=$_GET["clave"];
    $query = "SELECT * FROM usuario u WHERE u.ci = '$ci' and u.clave = '$clave'";
    $rec = mysqli_query($conn, $query);
    $count = 0;
 
    while($row = mysqli_fetch_object($rec)){        
        $count++;
        $result = $row;
    }
 
    if($count == 1){
        include "perfil.php";
    } 
    else
    {?>
    <html>
            <a href="index.php">Datos incorrectos, Vuelva a intentarlo</a>.<br/>
    <html>
    <?php
        echo 'intentelo de vuelta';
    }
?>