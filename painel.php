<?php 
    include_once 'autenticacao.php';
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        
        <!--<Deasativando o zoom para telas de celular>-->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <title></title>
        <!--ligação entre página e css-->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        
    </head>
    <body>
        
        <div class="container">
        
            <h1>Painel do Sistema</h1>
            
            <p>Seja bem vindo(a): <?php echo $_SESSION["nome"];?></p>
            
            <h2>Menu</h2>
            <nav id="menu">
                
            
                <?php 
                    if($_SESSION["id_perfil"] == "1"){
                        include_once 'menu-adm.php';                     
                    }else{
                        include_once 'menu-user.php';                     
                    }                                        
                ?>                
                
            </nav>
            
            <!-- Botões voltar e Avançar-->
            <div class="pager">
                
                <li class="previous" onclick="history.go(-1)">
                    <a href="#">&larr; Voltar</a>
                </li>
                
                
                <li class="next" onclick="history.go()">
                    <a href="#">Avançar &rarr;</a>
                </li>
                
            </div>
                       
            
        </div>
        
        <?php
        // put your code here
        ?>
    </body>
</html>
