return "id: " .$id." "."title :".$btitle." " ."fullname :".$fullname." " ."phone :".$phone."
    " ."email :".$email." " ."country :".$country." "."state :".$state." " ."city :".$city."
    " ."category :".$category." " ."bbody :".$bbody." " ."bpa :".$bpa." "."bpb :".$bpb."
    " ."dbc :".$dbc." " ."posted_at :".$posted_at." "."approved :".$approved." "; 
    <?php
include "db_connection.php";
function add(
    $id,$btitle,$fullname,$phone,$email,$country,$state,$city,$category,$bbody,$bpa,$bpb,$dbc,$posted_at,$approved)
    //accès à la basede donnée
    {
        $pdo=new PDO(URI_BASE_DONNEES, UTILISATEUR, MOT_DE_PASSE);
        $stm = $pdo->exec("INSERT INTO `article`(`id`, `btitle`, `fullname`, `phone`, `email`, 
        `country`, `state`, `city`, `category`, `bbody`, `bpa`, `bpb`, `dbc`, `posted_at`,
         `approved`)" . " VALUES (Null,'$btitle','$fullname','$phone','$email','$country','$state','$city','$category','$bbody','$bpa','$bpb','$dbc','$posted_at','$approved');");
   
    
}
//echo add(1,"title uuh","fullname hhbh","phone 88888","email jj","country jj","state uj","city hggvg","category ggvg","bbody jhbjhbjh","bpa yh","bpb i","dbc hgvgv",date("Y-m-d H:i:s"),"");
if(isset($_GET['soap']) || isset($_GET['SOAP']))
{
// première étape : désactiver le cache lors de la phase de test
ini_set("soap.wsdl_cache_enabled", "0");

// on indique au serveur à quel fichier de description il est lié
$serveurSOAP = new SoapServer('http://localhost/Blog/testsoap.php?wsdl');

// ajouter la fonction getHello au serveur
$serveurSOAP->addFunction('add');

// lancer le serveur
if ($_SERVER['REQUEST_METHOD'] == 'POST')

{
	$serveurSOAP->handle();
}
else
{   
    //declencher une erreur
	echo 'désolé, je ne comprends pas les requêtes GET, veuillez seulement utiliser POST';
}
}
elseif(isset($_GET['wsdl']) || isset($_GET['WSDL'])){
    //afficher le contenu du fichier wsdl
    $wsdlXML=file_get_contents(dirname(__FILE__) .DIRECTORY_SEPARATOR . 'testsoap.wsdl');
    header("Content-Type: application/xml; charset=utf-8");
    echo $wsdlXML;

}
else{
    //gerer l'erreur
    echo "Cas Faux";
}

?>