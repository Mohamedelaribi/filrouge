<?php 
include("connection.php");
 $selectImages =$connect->prepare("SELECT * FROM images");
 $selectImages->execute();

 ?>
 <!DOCTYPE html>
 <html lang="en">
 <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="gallery.css">
    <title>Document</title>
 </head>
 <body>
    <section id="sectionGallery">
        <?php include("Navbar.php");?>
    </section>
    <main calss="showImages">
        <?php
         foreach($selectImages as $showImages){   
            echo'
            <div id="showImages">  
        <img src="images/'.$showImages["image"].'" alt="">
        <img src="images/'.$showImages["image1"].'" alt="">
        <img src="images/'.$showImages["image2"].'" alt="">
        <img src="images/'.$showImages["image3"].'" alt="">
        <img src="images/'.$showImages["image4"].'" alt="">
        </div> ';
        }?>




    </main>
    

 </body>
 </html>