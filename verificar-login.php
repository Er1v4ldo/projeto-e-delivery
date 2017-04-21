<?php
    session_start(); //informa ao browser que o arquivo vai utilizar sessão (guardar valores no navegador)
    
    $login = $_POST["login"];
    $senha = $_POST["senha"];
    
    $con = mysqli_connect("127.0.0.1","root","","db_edelivery");
    
    $sql = "select * from pessoa where email = '".$login."' and senha = '".$senha."'";
    
    $result = mysqli_query($con, $sql);
    
    if(mysqli_num_rows($result) == 1){
        
        $row = mysqli_fetch_array($result);
        
        //guardando no navegador
        $_SESSION = $row;
                        
        header("location:painel.php");
        
    }else{
        $msg = "Login/Senha inválido(s)";
        header("location:index.php?msg=".$msg); //redirecionamento em php
    }

?>