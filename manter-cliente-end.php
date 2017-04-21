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
                <li role="presentation" class="active"><a href="#tab1" data-toggle="tab">Dados Pessoais</a></li>
                <li role="presentation"><a href="#tab2" data-toggle="tab">Endereço</a></li>
            </ul>
            <br>
            
            <form action="gravar-cliente.php" method="post" class="form-horizontal">

                <div class="form-group">
                    
                    <div class="col-sm-2"><!--tamanho do campo digitavel-->
                            <input type="text" name="nome" class="form-control"  placeholder="CEP:" required>
                        </div>
                 
                <div class="form-group">
                    
                    <div class="col-sm-2">
                        <input type="text" name="numero" class="form-control"  placeholder="Numero:" required>
                    </div>
                                    
                </div>
                
                </div> <!-- -->
               
                <div class="form-group">
                    
                    <label></label>
                        <div class="col-sm-5"><!--tamanho do campo digitavel-->
                            <input type="text" name="endereco" class="form-control"  placeholder="Endereço:" required>
                        </div>
                </div> 
                
                <div class="form-group">
                    
                    <label></label>
                        <div class="col-sm-5"><!--tamanho do campo digitavel-->
                            <input type="text" name="complemento" class="form-control"  placeholder="Complemento:" required>
                        </div>
                </div> 
               <!-- <form class="form-inline">-->
                    <div class="form-group">
                    
                    
                        <div class="col-sm-2"><!--tamanho do campo digitavel-->
                            <input type="text" name="cidade" class="form-control"  placeholder="Cidade:" required>
                        </div> 
                                    
                
                    <div class="form-group">
                    
                         <div class="col-sm-2"><!--tamanho do campo digitavel-->
                            <input type="text" name="bairro" class="form-control"  placeholder="Bairro:" required>
                        
                                                
                        <div class="pager">
                            <li class="next" onclick="history.go()">
                            
                                <a href="manter-cliente.php"> &larr; Voltar</a>
                            
                            </li>
                            
                           
                            <button type="button" class="btn btn-primary">Finalizar</button>
                            
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
