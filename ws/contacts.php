<?php
include "config.php";
function add($id, $name, $username, $email, $password,$gender,$image,$code,$status,$type)
{
	// accès à la base de données ...
	try
	{
	$pdo=new PDO(URI_BASE_DONNEES, UTILISATEUR, MOT_DE_PASSE);
    $stm = $pdo->exec("INSERT INTO `users` (`id`, `name`,`username`, `email`, `password`, `gender`,  `image`,`code`, `status`, `type`)" .
    " VALUES (NULL, '$name', '$username', '$email', '$password','$gender','$image','$code','$status','$type'); ");
	}
	catch(Exception $e)
	{
		$stm=0;
	}
    
	return $stm ;
}
function edit($id, $name, $username, $email, $password,$gender,$image,$code,$status,$type)
{
	// accès à la base de données ...
	try
	{
	$pdo=new PDO(URI_BASE_DONNEES, UTILISATEUR, MOT_DE_PASSE);
	$stm = $pdo->exec("UPDATE `users` SET `name` = '$name', `username` = '$username',
	 `email` = '$email', `password` = '$password', `gender` = '$gender',
	  `image` = '$image', `code` = '$code', `status` = '$status',
	   `type` = '$type' WHERE `users`.`id` = $id;"
	);
	}
	catch(Exception $e)
	{
		$stm=0;
	}
    
	return $stm ;
}
//echo add(1,"sujet 10", "message 10", "Lamine", date("Y-m-d H:i:s"));

if (isset($_GET['soap']) || isset($_GET['SOAP']))
{
// première étape : désactiver le cache lors de la phase de test
ini_set("soap.wsdl_cache_enabled", "0");

// on indique au serveur à quel fichier de description il est lié
$serveurSOAP = new SoapServer('http://localhost/ws/contacts.php?wsdl');

// ajouter la fonction getHello au serveur

$serveurSOAP->addFunction('add');

$serveurSOAP->addFunction('edit');

// lancer le serveur
if ($_SERVER['REQUEST_METHOD'] == 'POST')

{
	$serveurSOAP->handle();
}
else
{
	// déclacher une erreur ....
	echo 'désolé, je ne comprends pas les requêtes GET, veuillez seulement utiliser POST';
}

}
elseif(isset($_GET['wsdl']) || isset($_GET['WSDL']))
{
	//afihcer le contenu de fichier WSDL
	$wsdlXML= file_get_contents(dirname(__FILE__) . DIRECTORY_SEPARATOR . 'contacts.wsdl');
	
	header('Content-Type: application/xml; charset=utf-8');
	echo $wsdlXML;
}
else
{
	// geger une exp. erreur
	echo "CAS FAUX";
}
?>