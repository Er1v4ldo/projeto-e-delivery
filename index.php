<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" href="estilo_index.css" />
        <meta name="viewport" content="width=device-width" />
        <style>
            .navbar-header button {
                color: #fff
            }
        </style>

        <title>e-Delivery Acesso</title>

    </head>
    <body>
        <header>
            <nav class="navbar navbar-inverse">
                <div class="navbar-header">
                    <a href="#" class="navbar-brand">e-Delivery</a>
                    <button type="button" data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle">Menu</button>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="navbar-nav nav navbar-right">
                        <li><a href="#">Cadastre sua Loja</a></li>
                        <li><a href="#">Cadastre-se</a></li>
                    </ul>
                </div>
            </nav>
        </header>

        <div class="container-fluid">

            <div id="form-container" class="container-fluid">
                <form action="verificar-login.php" method="post">
                    <!--Uso do panel-->
                    <div class="panel-group">
                        <div class="panel panel-primary">
                            <div class="panel-heading">Acesso ao sistema</div>
                            <div class="panel-body">
                                <!--Campo usuario--> 
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

        <footer>
            <address>
                <strong>e-Delivery</strong><br>
                Av. Martin Luther King Jr., 1864, Del Castilho <br>
                Rio de Janeiro, RJ <br>
                Tel.: (21) 3548-4598
            </address>
            <address>
                Email: edelivery@email.com
            </address>
        </footer>
        <script src="bootstrap/js/jquery-2.2.0.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
