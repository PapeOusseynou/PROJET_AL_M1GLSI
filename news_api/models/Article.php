<?php


class Article extends DBConnection
{
    private $conn;
    private $table = 'article';

    public $id;
    public $btitle;
    public $fullname;
    public $phone;
    public $email;
    public $country;
    public $state;
    public $city;
    public $category;
    public $bbody;
    public $bpa;
    public $bpb;
    public $dbc;
    public $posted_at;
    public $approved;

    public function __construct($db)
    {
        $this->conn = $db;
    }

    public function getAllArticles()
    {
        $query = "SELECT * from article";
       
        return $this->createQuery($query);
    }

    public function getArticlesByCategory($id)
    {
        $sql = "SELECT id, btitle, fullname, DATE_FORMAT(posted_at, '%d %M, %Y') as posted_at, email, image,cat_title,cat_desc FROM article, categories WHERE article.id = categorie.id AND categorie.id = ?";
        return $this->createQuery($sql, [$id]);

    }

    public function getArticle($id)
    {
        $query = "SELECT * FROM article WHERE id=". $_GET["id"] ." ;";

        return $this->createQuery($query,[$id]);
    }

    public function addArticle($btitle,$fullname,$phone,$email,$country,$state,$city,$category,$bbody,$bpa,$bpb,$dbc,$posted_at,$approved)
    {
        
       
        $stm = exec("INSERT INTO `article` (`id`, `btitle`, `fullname`, `phone`, `email`, `country`, `state`, `city`, `category`, `bbody`, `bpa`, `bpb`, `dbc`, `posted_at`, `approved`)" .
        " VALUES (NULL, '$btitle', '$fullname', '$phone', '$email','$country','$state','$city','$city','$category','$bbody','$bpa','$bpb','$dbc','$posted_at','$approved'); ");
        
        
        
        return $stm ;
    }

}