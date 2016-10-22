<?php

/*Variaveis que são recebidas através do _POST*/

$email = $_POST['email'];
$senha = $_POST['senha'];
$telefone = $_POST['telefone'];
$nome = $_POST['nome'];
$cpf = $_POST['cpf'];
$rg = $_POST['rg'];
$tipoUsuario = $_POST['tipoUsuario'];

/*Inclui a classe PESSOA TO*/

include '../TO/PessoaTO.php';

/*Atribui a variavel $objTO a classe PessoaFisicaTO com todos os parametros*/

$objTO = new PessoaFisicaTO($email, $senha, $telefone, $nome, $cpf, $rg, $tipoUsuario);

/*Faz um set de cada elemento */

$objTO->setEmail($email);
$objTO->setSenha($senha);
$objTO->setTelefone($telefone);
$objTO->setNome($nome);
$objTO->setCpf($cpf);
$objTO->setRg($rg);
$objTO->setTipoUsuario($tipoUsuario);

/*Inclui a classe PESSOA DAO*/

include '../DAO/PessoaDAO.php';

/*Atribui a variavel $objDAO a classe PessoaDAO*/

$objDAO = new PessoaDAO();

/*Chama o método responsável por salvar a pessoa fisica que está na classe PessoaDAO com todos os atributos da variavel #objTO*/

$objDAO->salvarPessoaFisica($objTO);

