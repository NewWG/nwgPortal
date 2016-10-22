<?php

/*Variaveis de Conexão Com o Banco*/

$usuario = "root";
$senha = "";
$baseDeDados = "nwg";
$servidor = "localhost";

/*Faz a conexão com o banco utilizando os paremetros do nome do servidor, usuario, senha e a base de dados respectivamente
ou
Cancela a conexão */

$conecta = mysqli_connect($servidor, $usuario, $senha, $baseDeDados) or die(mysql_error($conecta));


