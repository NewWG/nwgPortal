<?php

$to = "contato@nwgPortal.com";
$email = $_REQUEST['email'];
$message = $_REQUEST['message'];

mail($to, $email, $message);



echo 'E-Mail enviado com sucesso';
?>