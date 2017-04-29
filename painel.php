<?php

include_once 'autenticacao.php';

if ($_SESSION["ID_PERFIL"] == "1") {
    include_once './apps/view/vendedor/painel-vendedor.php';
} else {
    include_once 'menu-user.php';
}
?>