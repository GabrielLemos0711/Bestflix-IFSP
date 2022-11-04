<?php
    require ('database.php'); 
    //Require() : a função require() importa arquivos, porém, caso o mesmo não seja encontrado, será levantado uma exceção e a execução é finalizada. Essa é uma maneira de interrompermos a execução dos scripts caso alguma anomalia ocorra.

    $title = $_POST["title"]; //name do input
    $description = $_POST["description"];
    $category = $_POST["category"];
    $cover = $_POST["cover"];
    $classification = $_POST["classification"];

    // echo $title. "<br>";
    // echo $description. "<br>";
    // echo $category. "<br>"; //só para exibir os dados na tela
    // echo $cover. "<br>";
    // echo $classification. "<br>";

    try {
        $stmt = $conn->prepare("INSERT INTO producoes (titulo, descricao, categoria, capa, classificacao)
        VALUES (:titulo, :descricao, :categoria, :capa, :classificacao)");
        $stmt->bindParam(':titulo', $title);
        $stmt->bindParam(':descricao', $description);
        $stmt->bindParam(':categoria', $category);
        $stmt->bindParam(':capa', $cover);
        $stmt->bindParam(':classificacao', $classification);

        $stmt->execute();
        // echo "Cadastro com sucesso!";
        $id = $conn->lastInsertId();

        $result["success"]["message"] = "Cadastrado com sucesso!"; //criamos o array para devolver o resultado do insert numa mensagem de sucesso.

        $result["data"]["id"] = $id; //criamos o array para devolver o resultado do insert com os dados inseridos.
        $result["data"]["title"] = $title;
        $result["data"]["description"] = $description;
        $result["data"]["category"] = $category;
        $result["data"]["cover"] = $cover;
        $result["data"]["classification"] = $classification;

        header('Content-Type: Text/json'); //para ser enviado no formato json.
        echo json_encode($result); //exibir o resultado.

    } catch (PDOException $e) {
        echo "Connection failed: " . $e->getMessage();
    }
?>