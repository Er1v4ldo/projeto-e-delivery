<?php  
    include_once 'autenticacao.php';
?>

<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        
        <!--Desativando o zoom para telas de celulares-->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <title></title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        
        
    </head>
    <body >
           
        <nav class="nav navbar-inverse"></nav>
        
        <div class="container">
            
            
            <h3 class="bg-info">Formulário Cadastro Cliente</h3>
            
            <ul class="nav nav-tabs">
                <li role="presentation" class="active"><a href="#">Dados Pessoais</a></li>
                <li role="presentation"><a href="manter-cliente-end.php">Endereço</a></li>
            </ul>
            <br>
            
            <form action="gravar-cliente.php" method="post" class="form-horizontal">

                <div class="form-group">
                    
                    <label></label>
                        <div class="col-sm-5"><!--tamanho do campo digitavel-->
                            <input type="text" name="nome" class="form-control"  placeholder="Nome:" required>
                        </div>
                </div>  
                              
                <div class="form-group">
                    
                    <label></label>
                    <div class="col-sm-5">
                        <input type="email" name="email" class="form-control"  placeholder="Email:" required>
                    </div>
                                    
                </div>
                
                <div class="form-group">
                    <div class="col-sm-1">
                        <input type="sexo" name="sexo" class="form-control" placeholder="Sexo:" required>
                    </div>
                    <div class="col-sm-2">
                
                    <label class="radio-inline">              
                    <input type="radio" name="masculino" value="masc" checked>
                    Masculino
                    </label> 
                 </div>
                          
                <div>
                
                    <label class="radio-inline">              
                    <input type="radio" name="feminino" value="fem" >
                    Feminino
                    </label> 
                 </div>
              
                </div>
                
               <!-- <form class="form-inline">-->
                    <div class="form-group">
                    
                    
                        <div class="col-sm-2"><!--tamanho do campo digitavel-->
                            <input type="telefone" name="telefone" class="form-control"  placeholder="Telefone:" required>
                        </div> 
                                    
                
                    <div class="form-group">
                    
                         <div class="col-sm-2"><!--tamanho do campo digitavel-->
                            <input type="text" name="contato" class="form-control"  placeholder="Contato:" required>
                        
                    
                        <div class="pager">
                            <li class="next" onclick="history.go()">
                                <a href="manter-cliente-end.php">Próximo &rarr;</a>
                            </li>
                        </div>
                        </div>    
                        </div>
                                       
                    </div> 
                    
                    
                    
                    
                    
                    
                </form>       
                
                </div>
            
            
                
        <?php
        // put your code here
        ?>
    </body>
</html>

        
        
        
        
        
        
        
        
        
      