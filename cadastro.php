<?php
	include("conexao.php");

	$cpf_usuario=$_POST['cpf_usuario'];
	$nome_usuario=$_POST['nome_usuario'];
	$genero_usuario=$_POST['genero_usuario'];
	$cargo_usuario=$_POST['cargo_usuario'];
	$departamento_usuario=$_POST['departamento_usuario'];
	$email_usuario=$_POST['email_usuario'];
	$telefone_usuario=$_POST['telefone_usuario'];
	$numero_equipamento=$_POST['numero_equipamento'];
	$nome_equipamento=$_POST['nome_equipamento'];
	$data_fabricacao=$_POST['data_fabricacao'];
	$data_aquisicao=$_POST['data_aquisicao'];
	$descricao_problema=$_POST['descricao_problema'];

	$sql="INSERT INTO usuario_equipamento(cpf_usuario, nome_usuario, genero_usuario, cargo_usuario, departamento_usuario, email_usuario, telefone_usuario, numero_equipamento, nome_equipamento, data_fabricacao, data_aquisicao, descricao_problema) VALUES('$cpf_usuario', '$nome_usuario', '$genero_usuario', '$cargo_usuario', '$departamento_usuario', '$email_usuario', '$telefone_usuario', '$numero_equipamento', '$nome_equipamento', '$data_fabricacao', '$data_aquisicao', '$descricao_problema')";

	if(mysqli_query($conexao, $sql)){
		echo "Enviado com sucesso!";
	}
	else{
		echo "Erro".mysqli_connect_error($conexao);
	}
	mysqli_close($conexao);
?>