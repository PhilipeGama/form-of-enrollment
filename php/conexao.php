<?php
	$servidor = "localhost";
	$usuario = "root";
	$senha = "root";
	$banco = "cadastro_curriculo";

	//Criar a conexão
	$conn = mysqli_connect($servidor,$usuario,$senha,$banco);
	mysqli_set_charset($conn,"utf8");
	//Verificar a conexão
	if($conn == true){
		echo "Conexão realizada com sucesso";
	}
	else{
		die("Falha na conexão: ". mysqli_connect_error());
	}
?>
