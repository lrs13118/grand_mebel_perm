<?php
require_once $_SERVER['DOCUMENT_ROOT'] . "/config/connection.php";

$id = trim($_POST['id']);
$active = $_POST['active'];

$updateResult = mysqli_query ($connection, "UPDATE `products` SET `active` = '".$active."' WHERE `id` = '".$id."' ");

if ($updateResult)
{
	echo 'Success';
} else {
	echo 'Error';
}
?>