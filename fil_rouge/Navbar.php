<?php 
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="jquey-3.6.0.min.js"></script>
    <link rel="stylesheet" href="navbar.css">
</head>
<body>

        <!-- navbar star -->
       
            <nav class="header navBar" id="navBar">     
            
                <a  class="linkLogo" href="homePage.php"><img class="logo" src="images/Spot.png" alt=""></a>
        
                    <div id="divLinks">
                        <a class="Links" id="Links" href="homePage.php">Home</a>
                        <a class="Links" id="Links" href="#divApropreNous"> A propos de nous</a>
                        <a class="Links" id="Links" href="gallery.php">Galerie</a>
                    </div>
                    
                    <div class="divNavBar" id="divNavBar">   
                            <a class="favoris" id="favoris" href="favorit.php">
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="30" fill="currentColor" class="bi bi-heart " viewBox="0 0 16 16">
                                <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
                            </svg></a>
                           <?php
                            if (isset($_SESSION['name'])){
                                echo '
                                <p class="fullname" id="fullname">'.$_SESSION['name'].' '.$_SESSION[ 'Prenom'].'</p>
                                <button type="submit" name="login" class="login" id="login">
                                <a href="logout.php" id="loginLink">Logout</a>
                                ';
                                
                            }
                               else {
                                echo ' <button type="submit" name="login" class="login" id="login">
                                <a href="login.php" id="loginLink">Login</a>
                                ';
                            }
                            
                           ?> 
                        
                    </div>
            </nav>
        
        <!-- navBar end -->
                           

</body>
</html>