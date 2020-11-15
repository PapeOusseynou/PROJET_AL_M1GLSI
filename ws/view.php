<?php
if (isset($_GET["id"]))
{
try {
$pdo=new PDO(URI_BASE_DONNEES, UTILISATEUR, MOT_DE_PASSE);
$stm = $pdo->query("SELECT * FROM users WHERE id=". $_GET["id"] ." ;");

if ($stm)
{
$user= $stm->fetch();

if ($user == false)
{
$messageJson->status=303;
$messageJson->error="L'ID en question (". $_GET["id"] .") n'existe pas dans la base de données.";	
}
else
$messageJson->data=$user;
}
else
{
$messageJson->status=400;
$messageJson->error="Erreur dans la requête SQL";
}

}
catch (Exception $e)
{
$messageJson->status=300;
$messageJson->error=$e->getMessage();
}
}
else
{
$messageJson->status=302;
$messageJson->error="Le paramêtre ID est obligatoire";	
}
?>