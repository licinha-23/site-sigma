<?php
// include do footer
include_once './includes/_banco.php';
include_once './includes/_head.php';
include_once './includes/_header.php';

$id = $_GET['id'];
$tipo = $_GET['tipo'];
?>

<?php 
 
 $sql = "SELECT * FROM produtos WHERE ProdutosID = $id";

 $exec = mysqli_query($conn, $sql);

 $numProdutos = mysqli_num_rows($exec);
 $produto = mysqli_fetch_assoc($exec);
?>

<div class="container mt-5">
    <div class="row">
        <div class="col">
            <h1><?php echo $produto['Nome']; ?></h1>
            <p><?php echo $produto['Descricao']; ?></p>
            <img src="./content/<?php echo $produto['imagem']; ?>">
            <h5><?php echo $produto['Preco']; ?></h5>
        </div>
    </div>
     
    <div class="row">
        <div class="col">
            </a href="index.php"><button type="button" class="btn btn-primary">Voltar</button></a>
        </div>
        <div class="col">
            <a href="contato.php"><button type="button" class="btn btn-primary">Comprar</button></a>
        </div>
    </div>
</div>
    

<?php
// include do footer
include_once './includes/_footer.php';
?>