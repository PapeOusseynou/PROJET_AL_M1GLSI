<?php
include "config.php";
$messageJson= new StdClass();
$messageJson->status=200;
$messageJson->error=null;
$messageJson->data=null;
// Web service liste des utilisateurs
//acces àla bdd
if (isset($_GET["token"]))
{
$pdo=new PDO(URI_BASE_DONNEES, UTILISATEUR, MOT_DE_PASSE);
	$stm = $pdo->query("SELECT valeur FROM `tokens` WHERE valeur='". $_GET["token"] ."' ;");
	//print_r($stm);
	$valeur=$stm->fetch();
	//print_r($valeur);
	if ($valeur){


	//accès au donnée utilisateur si token =azerty
	//localhost/ws/index.php?action=list&token="azerty"
	//valeur bdd azerty et softbakers
	//client 123456789 ET 00001111
	//http://localhost/ws/index.php?action=view&token=ab4f63f9ac65152575886860dde480a1&id=29
	

if (isset($_GET["action"]))
{
	//  and $_GET["action"] == "list")
	if ($_GET["action"] == "list")
	{
		header("Content-Type: application/json");
		header("Access-Control-Allow-Origin: *");
	include "list.php";	
	}
	elseif ($_GET["action"] == "view")
	{
		header("Content-Type: application/json");
		header("Access-Control-Allow-Origin: *");
	include "view.php";	
	}
	elseif ($_GET["action"] == "delete")
	{
		header("Content-Type: application/json");
		header("Access-Control-Allow-Origin: *");
	include "delete.php";	
	}
	elseif ($_GET["action"] == "add")
	{
	include "add.php";	
	}
	elseif ($_GET["action"] == "edit")
	{
	include "edit.php";	
	}
	else
	{
		header("Content-Type: application/json");
        header("Access-Control-Allow-Origin: *");
		$messageJson->status=305;
        $messageJson->error="Le valeur de paramètre action est inconnue.";
	}
	
}
else
{
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");

$messageJson->status=301;
$messageJson->error="Le paramètre action est obligatoire.";
}
}
else{
	$messageJson->status=500;
    $messageJson->error="Token invalide";
}
}

else{
	$messageJson->status=500;
    $messageJson->error="Utilisation de l'api est non autorisé,SVP,utiliser un token valide";
}


echo json_encode($messageJson);  
?>