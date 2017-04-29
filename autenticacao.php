<?php

session_start();
    
    if(!isset($_SESSION["NOME"])){
         session_destroy();
    
        $msg = "Acesso negado!";
        header("location:index.php?msg=".$msg);   
    }
    
