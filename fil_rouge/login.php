<?php include'connection.php';
session_start();

if(isset($_POST['seConnecter'])){
$email = $_POST['email'];
$password = $_POST ['password'];
$sql =  $connect->prepare("SELECT * FROM visiteur WHERE Email='$email' AND MotDePasse='$password'");
$sql->execute();
if($sql->rowCount()===1){
    foreach($sql as $result){
        $_SESSION['name']=$result['Nom'];
        $_SESSION['Prenom'] =$result['Prénom'];
        $_SESSION['IdVisiteur']=$result['IdVisiteur'];
        }
    
    header('location:homePage.php');
}
else{
    echo $errorMsg="Mot de Passe ou email inccorects";
}
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Se connecter</title>
    <link rel="icon" type="image/png" href="assets/logo.png"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" /> 
    <link href="loginstyle.css" rel="stylesheet">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</head>
<body>
    <div class="littlelogin">
        <div class="loginleft">
        <h1 class="logo">North Travel</h1>
        <h1>Sign Into</h1><h3>Your account</h3>
        <form method="POST" action="login.php">
        <input type ="text" name="email" class="email" placeholder="email:" required><br>
        <input type ="password" name="password" class="password" placeholder="Password:" required><br>
        <button class="btn" name="seConnecter">Sign in</button><br>
        </form>
        <p class="p">Dont  have and account?<a href="inscription.php">Register</a></p>
    </div>
    <div class="loginright">
    <img src="images/tanger.png" alt="">
    </div>
    </div>
</body>