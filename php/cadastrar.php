<?php  

include "conexao.php";

$dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
$nome_completo = $dados['nome']." ".$dados["sobrenome"];

var_dump($dados); 

$sql_1 = "INSERT INTO candidato(cpf,nome,telefone,genero,estado_civil,email,data_nascimento,
local_nascimento,nacionalidade,nivel_educacao,formacoes,experiencias,ocupacao_atual,
referencias) VALUES (
'".$dados['cpf']."',
'".$nome_completo."',
'".$dados['telefone']."',
'".$dados['genero']."',
'".$dados['estado_civil']."',
'".$dados['email']."',
'".$dados['data_nascimento']."',
'".$dados['local_nascimento']."',
'".$dados['nacionalidade']."',
'".$dados['nivel_educacao']."',
'".$dados['formacoes']."',
'".$dados['experiencias']."',
'".$dados['ocupacao_atual']."',
'".$dados['referencias']."'
)";


var_dump($sql_1); 

$result = mysqli_query($conn,$sql_1);

var_dump($result);




if($result){
	$_SESSION['id_candidato'] = mysqli_insert_id($conn);
	var_dump("teste".$_SESSION['id_candidato']);
	$sql_2 = "INSERT INTO endereco(id_candidato,cep,rua,bairro,cidade,uf) VALUES (
		'".$_SESSION['id_candidato']."',
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