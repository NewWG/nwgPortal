<?php
	$name = $_POST['name'];
	$email = $_POST['email'];
	$message = $_POST['message'];

	/*$data = ['name' => $name, 'email' => $email, 'message' => $message];
	echo json_encode($data);*/

	require 'library/PHPMailerAutoload.php';
	require 'library/class.phpmailer.php';

	$mail = new PHPMailer();
	$mail -> setLanguage('pt');

	$host = 'smtp.gmail.com';
	$username = 'newwebgeneration2@gmail.com';
	$password = '42embinario';
	$port = 587;
	$secure = 'tls';

	$from = $username;
	$fromName = "NWG";

	$mail->isSMTP();
	$mail->Host = $host;
	$mail->SMTPAuth = true;
	$mail->Username = $username;
	$mail->Password = $password;
	$mail->Post = $port;
	$mail->SMTPSecure = $secure;

	$mail->From = $from;
	$mail->FromName = $fromName;
	$mail->addReplyTo($from, $fromName);

	$mail ->addAddress('newwebgeneration2@gmail.com', 'NWG');

	$mail->isHTML(true);
	$mail->CharSet = 'utf-8';
	$mail->WordWrap = 70;

	$body = "<h3> Site NWG - Contato via Site </h3>";
	$body .= "<p>Nome do cliente:<strong> $name </strong> </p>";
	$body .= "<p>Email do cliente: <strong> $email </strong></p>";
	$body .= "<p>Mensagem do cliente: <strong> $message </strong> </p>";

	$mail->Subject = 'Contato via Site NWG';
	$mail->Body = nl2br($body);
	$mail->AltBody = 'Teste';

	$send = $mail->Send();
	if($send)
		echo json_encode('Email enviado com sucesso');
	else
		echo json_encode('Erro: '.$mail->ErrorInfo);
?>