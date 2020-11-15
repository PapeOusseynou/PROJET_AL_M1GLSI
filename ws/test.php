<?php
 //$clientContacts=new SoapClient("http://localhost/ws/contacts.php?WSDL");
 //$resultat=$clientContacts->add(12, "Papis", "utilisateur2", "sszz", "zddzhd","2ss","sls","dncjcn","njsz","kss");
 //echo " Resultat : " . $resultat;
 //pour ajouter on se connecte sur http://localhost/ws/index.php?tester&action=add
$clientContacts=new SoapClient("http://localhost/ws/contacts.php?WSDL");
$resultat=$clientContacts->edit(37, "Parce queS", "utzdkzkdz", "sszz", "zddzhd","2ss","sls","dncjcn","njsz","kss");
echo " Resultat : " . $resultat;
http://localhost/ws/index.php?tester&action=edit

?>