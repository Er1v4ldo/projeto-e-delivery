<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
        
            //1- Resgatar os dados
            $nome = $_POST["nome"];
            $email = $_POST["email"];
            $sexo = $_POST["sexo"];
            $telefone = $_POST["telefone"];
            $contato = $_POST["contato"];
        
            //2- Conectar o arquivo ao banco
            $con = mysqli_connect("localhost","root","","projetotcc");
            
            //3- montar a instrução sql de gravação
            //insert into cliente values(null,'Ana','ana@gmail.com','F','969174565','23455639');
            $sql = "insert into cliente values(null,'".$nome."','".$email."','".$sexo."','".$telefone."','".$contato."')";
            
            //4- Executar a instrução sql
            if(mysqli_query($con, $sql)){
                $msg = "Gravado com sucesso!";
            }else{
                $msg = "Erro ao gravar!";
            }
            
            echo "<script>
                    alert('".$msg."');
                    location.href='painel.php';
                  </script>";
            
            //5-Fechar a conexao
            mysqli_close($con);
            
        ?>
    </body>
</html>
