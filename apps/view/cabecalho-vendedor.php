<html>
    <head>
        <meta charset="UTF-8" />
        <title>e-Delivery</title>
        <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" href="../bootstrap/css/animate.css" />
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
                padding: 20px;
                background: #333;
                color: #FFF;
                margin-top: 10px;
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
                                <li><a href="#">Consultar</a></li>
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