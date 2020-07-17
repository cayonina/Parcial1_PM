<div class="contenido">
      <br>
      <br>
      <br>
      <br>
      <br>
<p id="cont"><h3>Color:</h3></p>
<?php
if (!$_POST){ 
?> 
<form method="POST"> 
    <select name="color[]"> 
          <option value="#aa98ff">Plomo</option>
          <option value="#00ff00">Verde</option>
          <option value="#ff33a0">Rosa</option>
    </select><br> 
    <input type="submit" value="Cambio de color" > 
</form> 
<?php
}else{ 
   	$col=$_POST["color"];
   	for ($i=0;$i<count($col);$i++) 
      	{ 
        echo "Cambio</br>";
        $sql = "UPDATE usuario ";
        $sql.= "SET color='$col[$i]' ";
        $sql.= "WHERE ci='$ci' ";
        $result=mysqli_query($conn, $sql); 
        }
      echo "presione f5 para ver el cambio de color";  
  } 
?>

</div>