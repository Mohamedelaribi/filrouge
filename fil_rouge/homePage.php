
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="homePage.css">
    <title>NextSpot</title>
</head>

<section class="section">
    <?php include "Navbar.php";?>
</section>

        <!-- main star -->

    <main class="aboutTanger">
        
        <h1 id="aboutTanger1">À PROPOS DE TANGER</h1>
        <div class="aboutTanger1">
            <div class="left"> 
                <img src="images/Rectangle 18.png" class="imageAboutTanger">
                <img src="images/Rectangle 48.png" class="imageAboutTanger2">
            </div>
            <div class="right">
                 <p class="tangerLaporte">Au nord du Maroc, la ville de Tanger invite les voyageurs. Sur ses rives, où convergent les eaux de   la Méditerranée et de l'Atlantique, vous découvrirez une ville authentique bercée par des influences diverses.

                    Promenez-vous dans Tanger la Blanca. Promenez-vous dans les rues bordées de maisons blanchies à la chaux et, comme Matisse avant, comme Delacroix aussi, laissez-vous emporter par l'air rêveur qui se dégage de la ville.</p>
                
            </div>
       
        </div>
    </main>
         <main class="mainCategory">
        <h1 class="category" id="category">Catégorie</h1>
        <div class="divCategory" id="divCategory">

        <?php include ('connection.php');
                $selectCategory = $connect->prepare('SELECT * FROM catégorie');
                $selectCategory->execute();
                foreach ($selectCategory as $result){
                    $_SESSION["nomCaterorey"]=$result["NomCatégorie"];
                    
                    echo'

                                <div class="card-catégorie">
                                <a href="publication.php?catégorie='.$result['IdCatégorie'].'"> <img class="imagesCatégorie" src= images/'. $result["imageCatégorie"].'></a>
                                    <div class="description">
                                        <h3 class="card-title">'.$result["NomCatégorie"].'</h3>
                                    </div>
                                </div>
                        
                        ';
                }
                            ?>
        </div>
        </main>

        <main class="commentAllerATaner">
            <h1 id="commentAllerATanger">Comment aller à Tanger ?</h1>
            <div class="mainCard">
                <p class='commentAllerATangerText'>Si la ville n’est pas des plus touristiques elle attire tout de même l’intérêt de pas mal de visiteurs ! Depuis la France quelques liaisons sont effectuées depuis Paris avec Transavia et Royal Air Maroc. Je sais également que des vols sont opérés par Ryanair depuis l’aéroport de Marseille. Il vous faudra donc soit passer par Paris, ou Casablanca pour vous rendre à Tanger.</p>
                <img class="commentAllerATangerImg" src="images/tangercity2.jpg">
            </div>
            <div id="divApropreNous">
                <h1 class="apropreNous">A Propos De Nous</h1>
                <p id="apropreNous">NEXT SPOT est une agence  de tourisme qui aide a les gens pour rechercher leur prochain endroit pour visite ou pour trouve leur favoris pour passer un bon moment .</p>
            </div>
        </main>
    
        <?php include'footer.php';?>

</body>

</htm>