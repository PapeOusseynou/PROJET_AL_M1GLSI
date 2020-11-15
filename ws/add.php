<?php
if (isset ($_GET['tester']) )
{
	header('Content-Type: text/html; charset=utf-8');
	?>
	<form action="http://localhost/ws/index.php?action=add" method="POST">
	 NOM : <input name="name" type="text" /><br />
	 Nom d'utilisateur : <input name="username" type="text" /><br />
	 Email : <input name="email" type="text" /><br />
	 Mot de Passe : <input name="password" type="text" /><br />
	 Genre : <input name="gender" type="text" /><br />
	 Image : <input name="image" type="text" /><br />
	 Code : <input name="code" type="text" /><br />
	 Status : <input name="status" type="text" /><br />
	 Type : <input name="type" type="text" /><br />
	 <input type="submit" name="envoyer">Tester</input>
	</form>
	<?php
}
else
{

// utilisation invok de service SOAP contacts via WSDL...
	
if (isset ($_POST['name']) && isset ($_POST['username']) && isset ($_POST['email']) && isset ($_POST['password'])
&& isset ($_POST['gender']) && isset ($_POST['image']) && isset ($_POST['code']) && isset ($_POST['status'])&& isset ($_POST['type']))
{	

$clientContacts=new SoapClient("http://localhost/ws/contacts.php?WSDL");
$resultat=$clientContacts->add(null,$_POST['name'], $_POST['username'], $_POST['email'],
$_POST['password'], $_POST['gender'], $_POST['image'], $_POST['code'],$_POST['status'], $_POST['type']);

if ($resultat)
{
$messageJson->status=200;
$messageJson->data=$resultat;
$messageJson->error=null;
}
else
{
$messageJson->status=307;
$messageJson->data=$resultat;
$messageJson->error="Une erreur au niveau de la requête SQL, vérifiez vos données SVP.";
}

}
else
{
$messageJson->status=306;
$messageJson->data=false;
$messageJson->error="";	
if(!isset ($_POST['name']))
{
	$messageJson->error=$messageJson->error. "Le paramètre nom est obligatoire.";
}
elseif(!isset ($_POST['username']))
{
	$messageJson->error=$messageJson->error. "Le paramètre username est obligatoire.";
}
elseif(!isset ($_POST['email']))
{
	$messageJson->error=$messageJson->error. "Le paramètre email est obligatoire.";
}
elseif(!isset ($_POST['password']))
{
	$messageJson->error=$messageJson->error. "Le paramètre password est obligatoire.";
}
elseif(!isset ($_POST['gender']))
{
	$messageJson->error=$messageJson->error. "Le paramètre gender est obligatoire.";
}
elseif(!isset ($_POST['image']))
{
	$messageJson->error=$messageJson->error. "Le paramètre image est obligatoire.";
}
elseif(!isset ($_POST['code']))
{
	$messageJson->error=$messageJson->error. "Le paramètre code est obligatoire.";
}
elseif(!isset ($_POST['status']))
{
	$messageJson->error=$messageJson->error. "Le paramètre status est obligatoire.";
}
elseif(!isset ($_POST['type']))
{
	$messageJson->error=$messageJson->error. "Le paramètre type est obligatoire.";
}

else
{
	$messageJson->error=$messageJson->error. "Le paramètre message est obligatoire.";
}
}

}
?>