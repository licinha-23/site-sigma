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
    $sql = "SELECT * FROM produtos WHERE Ativo = 1";
    $id = "SELECT * FROM produtos WHERE ProdutosID";
    $exec = mysqli_query($conn,$sql,$id);
    $numProdutos = mysqli_fetch_assoc($exec);
    for ($id=0; $id < 3 ; $id++) {

    ?>
    
    <div class="card m-3" style="width: 18rem;">
    <?php 
        while ($dados = mysqli_fetch_assoc($exec)) {
        echo '<h1>'.$dados ['Nome']. '</h1>';
    } ?>
    <div class="card-body">
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

   
