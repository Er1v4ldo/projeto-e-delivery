<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <!--Destivando o zoom para telas de Celular-->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="estilo.css">

        <title>e-Delivery Acesso</title>

    </head>
    <body>

        <div id="form-container" class="container-fluid">

        <div class="container-fluid" id="form-box">
            <form action="verificar-login.php" method="post">
                    <!--Uso do panel-->
                    <div class="panel-group">
                        <div class="panel panel-primary">
                            <div class="panel-heading">Acesso ao sistema</div>
                            <div class="panel-body">
                                <!-- Campo usuario -->
                                <div class="form-group">
                                    <label class="sr-only"for="login" >Usuário</label>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <span class="glyphicon glyphicon-user"></span>                        
                                        </div>
                                        <input type="text" name="login" class="form-control" placeholder="usuario@exemplo.com">
                                    </div>
                                </div>
                                <!--Campo senha-->
                                <div class="form-group">
                                    <label class="sr-only">Senha</label>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <span class="glyphicon glyphicon-lock"></span>                        
                                        </div>
                                        <input type="password" name="senha" class="form-control" placeholder="sua senha">
                                    </div>
                                </div>
                                    <?php
                                    //se existe
                                    if (isset($_GET["msg"])) {
                                        echo $_GET["msg"];
                                    }
                                    ?>
                                <div>
                                    <a href="#">Esqueceu sua senha</a>.
                                    <a href="#" class="text-center">Realize seu Cadastro</a>.
                                </div> 
                                <!--botão-->
                                <div class="">
                                    <input type="submit" value="Acessar" class="btn btn-primary">
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </body>
</html>
