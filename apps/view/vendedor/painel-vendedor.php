<?php 
require_once '../../class/Venda.class.php';
?>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>e-Delivery</title>
        <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../bootstrap/css/animate.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width" />
        <style>
            .navbar-header button {
                color: #fff
            }
            .fullscreen {
                width:100%;
            }
            main {
                padding-top:50px;
            }
            footer {
                background:#333;
                color:#fff;
                padding:20px 0;
                text-align:center;
                position: absolute;
                bottom: 0px;
                width: 100%;
            }
        </style>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-inverse navbar-fixed-top">
                <div class="navbar-header">
                    <a href="#home" class="navbar-brand">e-Delivery</a>
                    <button type="button" data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle">Menu</button>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="navbar-nav nav">
                        <li><a href="#novidades">Perfil</a></li>
                        <li><a href="#maisVendidos">Clientes</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                Produto
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Cadastrar</a></li>
                                <li><a href="lista-venda.php">Consultar</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-form navbar-right">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Digite a sua busca" />
                        </div>
                        <input type="submit" value="Buscar" class="btn btn-default" />
                    </form>
                </div>
            </nav>
        </header>
        <main>
            
        </main>
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
        <script src="../../public/js/jquery-2.2.0.min.js" type="text/javascript"></script>
        <script src="../../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../../public/js/wow.min.js" type="text/javascript"></script>
        <script>
            new WOW().init();
        </script>
    </body>
</html>