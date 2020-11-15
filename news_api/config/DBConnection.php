<?php


class DBConnection
{
    private $user = 'root';
    private $password = '';
    private $server = 'localhost';
    private $dbname = 'virtuablog';
    private $bdd;


    function dbConnect()
    {
        $this->bdd = null;
        try
        {
            $this->bdd = new PDO('mysql:host='.$this->server.';dbname='.$this->dbname.';charset=utf8', $this->user, $this->password);
            $this->bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }
        catch (PDOException $e)
        {
            echo 'Erreur de connexion : '.$e->getMessage();
        }
        return $this->bdd;
    }

    protected function createQuery($sql, $parameters = null)
    {
        if($parameters)
        {
            $result = $this->dbConnect()->prepare($sql);
            $result->setFetchMode(PDO::FETCH_CLASS, static::class);
            $result->execute($parameters);
            return $result;
        }
        $result = $this->dbConnect()->query($sql);
        $result->setFetchMode(PDO::FETCH_CLASS, static::class);
        return $result;
    }

}