<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon">

	<title>Fila de Espera</title>
	<meta charset="utf-8">
</head>
<body>
	<br>
	<center> <a class="navbar-brand" href="listagem.html"><img src="logo.png" width="250px"></a> </center>
	<table border="2" width="100%">
		<tr><td Colspan="6"><center><h1>Fila de Espera</h1></center></tr></td>
		
		<br>
		<tr><td><b>CPF</b></td><td><b>Mesa</b></td><td><b>Nº do pedido</b></td><td><b>Nome</b></td></tr>
			<?php

			 
			 $desc=$_POST["ord"];
			 $op=$_POST["op"];
			 $ID="ID";
			 $Mesa="Mesa";
			 $Nome="Nome";
			 $CPF="CPF";
			 $comando="SELECT * FROM usuarios order by $op $desc";


			 if($op=="listar_cpf"){
			 	$comando="SELECT * FROM  `usuarios` ORDER BY  `CPF`";
			 }
			 if($op=="listar_pedido"){
			 	$comando="SELECT * FROM  `usuarios` ORDER BY  `ID`";
			 }
			 if($op=="listar_mesa"){
			 	$comando="SELECT * FROM  `usuarios` ORDER BY  `Mesa`";
			 }
			 if($op=="listar_nome"){
			 	$comando="SELECT * FROM  `usuarios` ORDER BY  `Nome`";
			 }
			 if($op=="crescente"){
				$comando="SELECT * FROM  `usuarios` ORDER BY ASC";
			}
			 if($op=="decrescente"){
				$comando="SELECT * FROM  `usuarios` ORDER BY DESC";
			}
			 

			 $cone=mysqli_connect("localhost","root","","loginn")or die("Impossivel se conectar ao MySQL");
			 $consulta=mysqli_query($cone,$comando);
			 $aux=0;

			 while(mysqli_num_rows($consulta)>$aux){
			 	$rs = mysqli_fetch_array($consulta);
			 	echo ("<tr><td>$rs[CPF]
			 				<td>$rs[Mesa]
			 				<td>$rs[ID]
			 				<td>$rs[Nome]
			 				 
			 								</tr>");
			 	$aux++;
			 }
			?>
	</table>
</body>
</html>