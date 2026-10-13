<html>
<head>
    <meta charset="UTF-8">
    <title>Exemplo PHP Básico</title>
</head>
<body>
    <?php
    // Ativar a exibição de erros para depuração
    ini_set("display_errors", 1);
    
    // Exibir a versão atual do PHP
    echo "<h1>Versão Atual do PHP: " . phpversion() . "</h1>";

    // Configurações da base de dados
    $servername = "db";
    $username = "root";
    $password = "Senha123";
    $database = "testedb";

    // Criar conexão com o MySQL
    $link = new mysqli($servername, $username, $password, $database);

    // Verificar a conexão
    if (mysqli_connect_errno()) {
        printf("Falha na conexão: %s\n", mysqli_connect_error());
        exit();
    } else {
        echo "<p>Conexão com a base de dados estabelecida com sucesso!</p>";
    }
    ?>
</body>
</html>
