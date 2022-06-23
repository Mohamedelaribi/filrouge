<?php  include('connection.php');

$detailePublication =$_GET['Publication'];
$selectdetaile = $connect->prepare("SELECT * FROM publication INNER JOIN images ON publication.Id=images.Id WHERE publication.Id='$detailePublication'");
$selectdetaile->execute();
foreach($selectdetaile as $r){
$_SESSION["libelle"]= $r['libelle'];
$_SESSION["Id"]=$r["Id"];
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="detailPublication.css">
    <script src="displayImages.js"></script>
    <title><?php echo $_SESSION["libelle"]?></title>
</head>
<body>
<section class="navDetail" id="navDetail">
<?php include "Navbar.php";?>
</section>

<div class="detailPblication">
    <div class="leftDiv"><button class="b3" onClick="myFunction4()"></button>
        <img class="imageLeft" src="images/<?php echo $r["image1"]?>" alt="">
        <div class="moreImages">
            <img class="morImagesdown"  src="images/<?php echo $r["image"]?>" alt="">
            <img class="morImagesdown" src="images/<?php echo $r["image2"]?>" alt="">
            <img class="morImagesdown" src="images/<?php echo $r["image3"]?>" alt="">
            <img class="morImagesdown" src="images/<?php echo $r["image4"]?>" alt="">
        </div>
    </div>
    <div class="rightDIV">
        <h1 class="detaileLibelle"><?php echo $r["libelle"]?></h1>
        <p class="detaileDescription"><?php echo $r["Description"]?></p>
        <h5 class="detaileAdresse"><?php echo $r["Adresse"]?></h5>
        <h3 class="detaileTelephone"><?php echo $r["Telephone"]?></h3>
    </div>
</div>
    <div class="reviews">
        <button class="review">Reviews</button><br>
        <?php 
        $selectReview = $connect->prepare("SELECT * FROM review INNER JOIN visiteur ON review.IdVisiteur = visiteur.IdVisiteur WHERE Id='$detailePublication'");
        $selectReview->execute();
        foreach($selectReview as $result){
            
            echo'
            <div class="Preview">
            <i class="fa-solid fa-circle-user user"></i>
            <h1 class="NomDevisiteur">'.$result["Nom"].' '.$result["Prénom"].'</h1>
        </div>
        <p class="commande" id="showCommande">'.$result["Commentaire"].'</p>
        ';
        }?>
        <form action="" method="POST">
        <input placeholder="Donne un commentaire " type="text" name="reviewText" class="reviewText" id="commande">
        <button class="envoyer" type="submit" name="envoyer">Envoyer</button>
    </form>
</div>



    <?php

    
if(isset($_POST["envoyer"])){
    $Id=$detailePublication;
    $IdVisiteur=$_SESSION["IdVisiteur"];
    $envoyer=$_POST["reviewText"];
    $insertReview =$connect->prepare("INSERT INTO `review`(`Id`, `IdVisiteur`, `Note`, `Commentaire`) VALUES ('$Id','$IdVisiteur','','$envoyer')");
    $insertReview->execute();
}
    
    
    
    
    include('footer.php');?>
    
</body>
</html>