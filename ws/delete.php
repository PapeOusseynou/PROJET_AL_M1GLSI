<?php
if (isset($_GET["id"]))
{
try {
$pdo=new PDO(URI_BASE_DONNEES, UTILISATEUR, MOT_DE_PASSE);
$stm = $pdo->exec("DELETE FROM contacts WHERE id=". $_GET["id"] ." ;");

if ($stm)
{
$messageJson->data=true;
}
else
{
$messageJson->status=400;
$messageJson->data=false;
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
$messageJson->status=304;
$messageJson->error="Le paramêtre ID est obligatoire";	
}
?>