<?php

	$name = $_POST['name'];
	$email = $_POST['email'];
	$message = $_POST['message'];

	$data = ['name' => $name, 'email' => $email, 'message' => $message];

	echo json_encode($data);

?>