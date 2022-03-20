<?php
	$servidor="localhost:3325";
	$usuario="root";
	$senha="";
	$dbname="form";

	$conexao=mysqli_connect($servidor, $usuario, $senha, $dbname);
	if(!$conexao){
		die("Houve um erro: ".mysqli_connect_error());
	}
?>