<?php
// include do footer
include_once './includes/_dados.php';
include_once './includes/_head.php';
include_once './includes/_header.php';

$id = $_GET['id'];
$tipo = $_GET['tipo'];

echo $id;
?>

<div class="container mt-5">
    <div class="row">
        <div class="col">
        <h1><?php echo $produtos[$id]['nome']; ?></h1>
        <p><?php echo $produtos[$id]['descrição']; ?></p>
        <img src="./content/<?php echo $produtos [$id] ['imagem']; ?>">
        <h5><?php echo $produtos[$id]['preço']; ?></h5>
        </div>
    </div>
    <div class="row">
        <div class="col">Voltar</div>
        <div class="col">Comprar</div>
    </div>
</div>

<?php
// include do footer
include_once './includes/_footer.php';
?>