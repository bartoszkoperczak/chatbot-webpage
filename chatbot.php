<?php

session_start();

require 'dictionary.php';

function findKeyword($dictionary, $question) //słowa kluczowe
{
	foreach ($dictionary as $keywords => $message) 
	{
		$keywordsArray = explode('|', $keywords);
		foreach ($keywordsArray as $keyword) 
		{
			if (strpos($question, $keyword) !== false)
			{
				return $message;
			}
		}
	}

	return 'Niestey nie znam odpowiedzi na to pytanie. Spróbuj zapytać o coś innego.';
}

//dane z formularza
if ($_SERVER['REQUEST_METHOD'] === 'POST' && !empty($_POST['userMessage']))
{
					//oczyszczanie danych
	$question = mb_strtolower(trim($_POST['userMessage']));

	$response = findKeyword($dictionary, $question);

	$_SESSION['responses'][$question]= $response;
}

include 'index.php';