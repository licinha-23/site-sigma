<?php
// include do footer
include_once './includes/_banco.php';
include_once './includes/_head.php';
include_once './includes/_header.php';
?>

<h1>Promoção</h1>

<div class="container">
    <div class="row mt-5">
    <?php
    $sql = "SELECT * FROM categorias WHERE Ativo = 1";
    $exec = mysqli_query($conn,$sql);

    $numProdutos = mysqli_fetch_assoc($exec);

    while ($dados = mysqli_fetch_assoc($exec)) {
        echo '<h1>'.$dados['Nome'].'</h1>';
    }
    ?>

<?php 
for ($i=0; $i < 3 ; $i++) {
?>
    
    <div class="card m-3" style="width: 18rem;">
    <img src="./content/<?php echo $produtos [$i] ['imagem']; ?>" class="card-img-top" alt="...">
    <div class="card-body">
    <h5 class="card-title"><?php echo $produtos [$i] ['nome']; ?></h5>
    <p class="card-text"><?php echo $produtos [$i] ['descrição']; ?></p>
    <a href="produto-detalhe.php?id=<?php echo $i;?>&tipo=promocao" class="btn btn-primary">Comprar</a>
    </div>
    </div>

<?php
}
?>

    </div>
</div>

<?php
// include do footer
include_once './includes/_footer.php';
?>