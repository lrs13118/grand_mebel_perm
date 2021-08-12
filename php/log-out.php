<?php
require_once $_SERVER['DOCUMENT_ROOT'] . "/config/connection.php";

session_start();

unset($_SESSION['auth_admin']);
unset($_SESSION['auth_login']);
unset($_SESSION['auth_password']);

echo "Success";

?>