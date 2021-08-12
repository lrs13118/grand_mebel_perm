<?php
require_once $_SERVER['DOCUMENT_ROOT'] . "/config/connection.php";

$login = trim($_POST['login']);
$password = trim($_POST['password']);

$userResult = mysqli_query($connection, 'SELECT * FROM `user` WHERE `login` = "'.$login.'" AND `password` = "'.$password.'"');
$user = mysqli_fetch_assoc($userResult);

if ($user)
{
	session_start();
	$_SESSION['auth_admin'] = "yes_auth_admin";
	$_SESSION['auth_login'] = $user['login'];
	$_SESSION['auth_password'] = $user['password'];
	echo "Success";
} else {
	echo "Wrong data";
}
?>