<?php
session_start();
include "connection.php";
if(isset($_POST["envoyer"])){
    $Id=$_SESSION["Id"];
    $IdVisiteur=$_SESSION["IdVisiteur"];
    $envoyer=$_POST["reviewText"];
    $insertReview =$connect->prepare("INSERT INTO `review`(`Id`, `IdVisiteur`, `Note`, `Commentaire`) VALUES ('$Id','$IdVisiteur','','$envoyer')");
    $insertReview->execute();
}
?>