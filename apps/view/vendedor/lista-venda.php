<?php
require_once '../../controller/conexao.php';
require_once './venda-banco.php';
?>
<html>

    <head>
        <meta charset="UTF-8" />
        <title>e-Delivery</title>
        <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="../../bootstrap/css/animate.css" rel="stylesheet" type="text/css" />
        <meta name="viewport" content="width=device-width" />
        <style>
            .navbar-header button {
                color: #fff
            }

            .fullscreen {
                width: 100%;
            }

            main {
                padding-top: 50px;
            }

            footer {
                background: #333;
                color: #fff;
                padding: 20px 0;
                text-align: center;
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
            <section class="container">
                <table class="table table-condensed table-bordered">
                    <thead>
                        <tr>
                            <th>Nome do cliente</th>
                            <th>Nome da comida</th>
                            <th>Data da venda</th>
                            <th>Quantidade</th>
                            <th>Total</th>
                            <th>Pagamento</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $vendas = listaVendas($conexao);
                        //foreach ($vendas as $produto) :
                        for ($i = 0; $i < count($vendas); $i++) {
                            $produto[$i] = $vendas[$i];
                            ?>
                            <?php
                            if ($produto[$i]['status_pagamento'] == 'pendente') {
                                ?>
                                <tr class="danger">
                                    <td>
                                        <?= $produto[$i]['nome'] ?>
                                    </td>
                                    <td>
                                        <?= $produto[$i]['titulo'] ?>
                                    </td>
                                    <td class="text-center">
                                        <?= $produto[$i]['data_venda'] ?>
                                    </td>
                                    <td class="text-center">
                                        <?= $produto[$i]['quantidade_produto'] ?>
                                    </td>
                                    <td class="text-center">
                                        <?= "R$ " . $produto[$i]['total_compra'] ?>
                                    </td>

                                    <td class="text-center">
                                        <?= $produto[$i]['status_pagamento'] ?>
                                    </td>
                                </tr>
                                <?php
                            } else {
                                ?>
                                <tr>
                                    <td>
                                        <?= $produto[$i]['nome'] ?>
                                    </td>
                                    <td>
                                        <?= $produto[$i]['titulo'] ?>
                                    </td>
                                    <td class="text-center">
                                        <?= $produto[$i]['data_venda'] ?>
                                    </td>
                                    <td class="text-center">
                                        <?= $produto[$i]['quantidade_produto'] ?>
                                    </td>
                                    <td class="text-center">
                                        <?= "R$ " . $produto[$i]['total_compra'] ?>
                                    </td>

                                    <td class="text-center">
                                        <?= $produto[$i]['status_pagamento'] ?>
                                    </td>
                                </tr>
                                <?php
                            }
                            ?>
                            <?php
                        }
                        //endforeach
                        ?>
                    </tbody>
                </table>
            </section>

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
