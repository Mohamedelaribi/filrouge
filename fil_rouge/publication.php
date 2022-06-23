<?php
include "connection.php";
$getcatégorie=$_GET['catégorie'];
$selectData= $connect->prepare("SELECT *  FROM publication INNER JOIN images ON publication.Id=images.id 
where idCatégorie ='$getcatégorie'");
$selectData->execute();



?>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="Publication.css">
    
    <title><?php echo $_SESSION["nomCaterorey"]?></title>
</head>
<body>

<section class="section" id="section">
<?php include "Navbar.php";?>
</section>
        <h1 class="bienvenueATanger">Bienvenue à Tanger.</h1>
           <p id="bienvenueATanger">nous vous aidons à trouver un bon endroit pour passer votre nuit.</p>
        <div class="filtre">
        <input class="buttonPourFltr" type="button" value="Hotels" onclick="changeItems(i=2)">
        <input class="buttonPourFltr" type="button" value="Cafés" onclick="changeItems(i=1)">
        <input class="buttonPourFltr" type="button" value="Resturants" onclick="changeItems(i=3)">
    </div>
            <script>
                function changeItems(elem){
                    if(i=== 0){
                        url ='publication.php';
                    }else{
                        url ='publication.php?catégorie='+elem
                    }window.location.replace(url);
                    
                }
            </script>
            <div class="publications">
            <?php
             foreach($selectData as $resulte){
                
             echo'
            
            <div class="publication">
                <img src="images/'.$resulte["image1"].'" class="leMirage2">
                <form method="post" action="detailPublication.php?Publication='.$resulte["Id"].'">
                <button name="MoreInformation" class="MoreInformation">More Information</button>
                </form>
                <h1 class="lebille">'.$resulte["libelle"].'</h1>
                <h2 class="prix"> de '.$resulte["Prix"].' DH</h2>
                <p class="adresse">'.$resulte["Adresse"].'</p>
                <a class="lien" href="'.$resulte["website"].'">website</a>
            </div>
            ';
             }?></div>
             <?php include('footer.php');?>
</body>
</html>