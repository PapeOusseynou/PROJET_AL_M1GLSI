<?php
    header('Access-Control-Allow-Origin: *');

    include_once '../../config/DBConnection.php';
    include_once '../../models/Article.php';

    $database = new DBConnection();
    $db = $database->dbConnect();

    $article = new Article($db);

    $id = $article->id = isset($_GET['id']) ? $_GET['id'] : die();

    $result =  $article->getArticle($id);

    $num_row = $result->rowCount();

    if($num_row > 0)
    {
        $row = $result->fetch(PDO::FETCH_ASSOC);

        extract($row);

        $article_item = array(
            "id" => $id,
                "btitle" => $btitle,
                "fullname" => $fullname,
                "phone" => $phone,
                "email" => $email,
                "country" => $country,
                "state" => $state,
                "city" => $city,
                "category" => $category,
                "bbody" => $bbody,
                "bpa" => $bpa,
                "bpb" => $bpb,
                "dbc" => $dbc,
                "posted_at" => $posted_at,
                "approved" => $approved,
        );

        //array_push($article_arr['data'], $article_item);
        echo json_encode($article_item);
    }

    else
    {
        echo json_encode(
            array('message' => 'Aucun article trouvé')
        );
    }

