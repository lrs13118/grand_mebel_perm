<?php
	function transformPriceForDisplaying($price)
	{
		$priceString = strval($price);
		$strlen = strlen($priceString);
		$remainder = $strlen%3;
		$price = substr($priceString, 0, $remainder) . ' ' . substr($priceString, $remainder, $strlen);
		return $price;
	}

	function getConstantsFileContent()
	{
		$constantsFileContent = file_get_contents($_SERVER['DOCUMENT_ROOT'] . '/config/constants.php');

		return $constantsFileContent;
	}

	function putConstantsFileContent($content)
	{
		$constantsFileContent = file_put_contents($_SERVER['DOCUMENT_ROOT'] . '/config/constants.php', $content);
	}
?>