<?php
try {
$pdo=new PDO(URI_BASE_DONNEES, UTILISATEUR, MOT_DE_PASSE);
if (isset($_GET["id"]))
$row=null;
$stm = $pdo->query("SELECT * FROM users ");

if ($stm)
{
$users= $stm->fetchAll();
$messageJson->data=$users;
print_r($users);
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
?>