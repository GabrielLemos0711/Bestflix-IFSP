<?php
    require('database.php');

    $id = $_POST["id"];
    $title = $_POST["title"];
    $description = $_POST["description"];
    $category = $_POST["category"];
    $cover = $_POST["cover"];
    $classification = $_POST["classification"];

    try {
        $stmt = $conn->prepare("UPDATE producoes  SET titulo = :titulo, descricao = :descricao, categoria = :categoria, capa = :capa, classificacao = :classificacao WHERE id = :id;");

        $stmt->bindParam(':id', $id);
        $stmt->bindParam(':titulo', $title);
        $stmt->bindParam(':descricao', $description);
        $stmt->bindParam(':categoria', $category);
        $stmt->bindParam(':capa', $cover);
        $stmt->bindParam(':classificacao', $classification);

        $stmt->execute();
        // echo "Cadastro com sucesso!";
        $count = $stmt->rowCount();
        if($count == 1){
            $result["success"]["message"] = "Cadastrado com sucesso!"; //criamos o array para devolver o resultado do insert numa mensagem de sucesso.

        $result["data"]["id"] = $id; //criamos o array para devolver o resultado do insert com os dados inseridos.
        $result["data"]["title"] = $title;
        $result["data"]["description"] = $description;
        $result["data"]["category"] = $category;
        $result["data"]["cover"] = $cover;
        $result["data"]["classification"] = $classification;
        }else{
            $result["error"]["message"] = "ID: $id não encontrado!";
        }

        header('Content-Type: text/json');
        echo json_encode($result);
    } catch (PDOException $e) {
        echo "Connection failed: " . $e->getMessage();
    }
?>