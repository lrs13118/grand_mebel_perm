<?php
	function transformPriceForDisplaying($price)
	{
		$priceString = strval($price);
		$strlen = strlen($priceString);
		$remainder = $strlen%3;
		$price = substr($priceString, 0, $remainder) . ' ' . substr($priceString, $remainder, $strlen);
		return $price;
	}
?>