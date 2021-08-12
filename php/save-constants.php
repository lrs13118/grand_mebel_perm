<?php
require_once $_SERVER['DOCUMENT_ROOT'] . "/config/connection.php";
require_once $_SERVER['DOCUMENT_ROOT'] . "/php/functions.php";

$content = trim($_POST['content']);

if (!empty($content))
{
	putConstantsFileContent($content);

	echo "Success";
} else {
	echo "Empty";
}
?>