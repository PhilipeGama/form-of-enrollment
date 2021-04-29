<?php  

include "conexao.php";

$dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
$nome_completo = $dados['nome']." ".$dados["sobrenome"];

var_dump($dados); 

$sql_1 = "INSERT INTO aluno(numero_seguranca,nome,telefone,fax,genero,estado_civil,email,dt_nascimento,
local_nascimento,nacionalidade,nivel_educacao,ensino_medio,conquistas,ocupacao,referencias,minoria,tipo_minoria,tipo_doutorado) VALUES (
'".$dados['numero_seguranca']."',
'".$nome_completo."',
'".$dados['telefone']."',
'".$dados['fax']."',
'".$dados['gender']."',
'".$dados['estado_civil']."',
'".$dados['email']."',
'".$dados['data_nascimento']."',
'".$dados['local_nascimento']."',
'".$dados['nacionalidade']."',
'".$dados['nivel_educacao']."',
'".$dados['ensino_medio']."',
'".$dados['conquistas']."',
'".$dados['ocupacao']."',
'".$dados['referencias']."',
'".$dados['minoria']."',
'".$dados['tipo_minoria']."',
'".$dados['tipo_doutorado']."'
)";

var_dump($sql_1); 

$result = mysqli_query($conn,$sql_1);

var_dump($result);

if($result){
	$_SESSION['id_aluno'] = mysqli_insert_id($conn);
	var_dump("aaaaaaaa".$_SESSION['id_aluno']);
	$sql_2 = "INSERT INTO endereco(id_aluno,cep,rua,bairro,cidade,uf) VALUES (
		'".$_SESSION['id_aluno']."',
		'".$dados['cep']."',
		'".$dados['rua']."',
		'".$dados['bairro']."',
		'".$dados['cidade']."',
		'".$dados['uf']."'
	)";
	var_dump($sql_2);
	$result = mysqli_query($conn,$sql_2);
}



?>