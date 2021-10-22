<?php
require_once $_SERVER['DOCUMENT_ROOT'] . "/config/connection.php";

$id = trim($_POST['id']);
$processed = $_POST['processed'];

$updateResult = mysqli_query ($connection, "UPDATE `requests` SET `processed` = '".$processed."' WHERE `id` = '".$id."' ");

if ($updateResult)
{
	echo 'Success';
} else {
	echo 'Error';
}
?>