<?php 
include "connection.php";?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription</title>
    <link rel="icon" type="image/png" href="assets/logo.png"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" /> 
    <link href="inscstyle.css" rel="stylesheet">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</head>
<body>
    <div class="littlelogin">
        <div class="loginleft">
        <h1 class="logo">North Travel</h1>
        <h1>Register</h1>
        <form method="POST" action="inscription.php">
            <input type ="text" name="name" class="email" placeholder="Nom" required><br>
            <input type ="text" name="Prenom" class="Prenom" placeholder="Prénom" required><br>
            <input type ="text" name="email" class="email" placeholder="Email" required><br>    
            <input type ="password" name="password" placeholder="password" class="password" required><br>
        <button class="btn" name="seConnecter">Sign in</button><br>
        </form>
    </div>
    <div class="loginright">
        <img src="images/tanger.png" alt="">
    </div>
    </div>

    <?php
    session_start();
   include "connection.php";
    if(isset($_POST['seConnecter'])){
        
        
       $name =$_POST['name'];
       $prenom =$_POST['Prenom'];
       $email =$_POST['email'];
       $password =$_POST['password'];
 

       $checkEmail=$connect ->prepare("SELECT Email from visiteur where Email='$email'");
       $checkEmail->execute();
       $user= $checkEmail->fetch();
       if($user){
        echo"cet email est déja exister";
       }else
       {
       
       $insertData = $connect ->prepare("INSERT INTO visiteur (Nom,Prénom,Email,MotDePasse)VALUES('$name','$prenom','$email','$password')");
       $insertData->execute();
       $_SESSION['name']=$name;
       $_SESSION['Prenom']=$prenom;
       header('location:homePage.php');
       }
       


    }
    ?>

</body>
</html>