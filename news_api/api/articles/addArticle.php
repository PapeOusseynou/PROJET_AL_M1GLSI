<?php
 header('Access-Control-Allow-Origin: *');
 header('Content-Type: application/json');
 header('Access-Control-Allow-Methods: POST');
 
    include_once '../../config/DBConnection.php';
    include_once '../../models/Article.php';

    $database = new DBConnection();
    $db = $database->dbConnect();

    $article = new Article($db);

    $btitle = $article->btitle  = isset($_POST['btitle ']) ? $_POST['btitle '] : die();
    $fullname = $article->fullname = isset($_POST['fullname']) ? $_POST['fullname'] : die();
    $phone = $article->phone  = isset($_POST['phone ']) ? $_POST['phone '] : die();
	$email = $article->email  = isset($_POST['email ']) ? $_POST['email '] : die();
	$country = $article->country  = isset($_POST['country ']) ? $_POST['country '] : die();
    $state = $article->state  = isset($_POST['state ']) ? $_POST['state '] : die();
    $city = $article->city  = isset($_POST['city ']) ? $_POST['city '] : die();
	$category = $article->category   = isset($_POST['category  ']) ? $_POST['category  '] : die();
	$bbody = $article->bbody  = isset($_POST['bbody ']) ? $_POST['bbody '] : die();
    $bpa = $article->bpa = isset($_POST['bpa']) ? $_POST['bpa'] : die();
    $bpb = $article->bpb  = isset($_POST['bpb ']) ? $_POST['bpb '] : die();
	$dbc = $article->dbc  = isset($_POST['dbc ']) ? $_POST['dbc '] : die();
	$posted_at = $article->posted_at  = isset($_POST['posted_at']) ? $_POST['posted_at '] : die();
    $approved = $article->approved  = isset($_POST['approved ']) ? $_POST['approved '] : die();
    $data = json_decode(file_get_contents('php://input'));

    // $article->titre = $data->titre;
    // $article->description = $data->description;
    // $article->idCata = $data->description;

    $result =  $article->addArticle();

    if($result)
    {
        echo json_encode(
            array('message' => 'Article ajouté')
        );
    }
    else
    {
        echo json_encode(
            array('message' => "Une erreur est survenu lors de l'ajout de l'article ! Veuillez ressayer")
        );
    }
