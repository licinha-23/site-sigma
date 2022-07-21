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
 
 $sql = "SELECT * from produtos where Ativo = 1 ORDER BY RAND() LIMIT 3";

 $exec = mysqli_query($conn, $sql);

 $numProdutos = mysqli_num_rows($exec);

 while ($dados = mysqli_fetch_assoc($exec)){
 ?>
<div class="card mt-3" style="width: 18rem; margin: 2rem;">
   <img class="card-img-top" style='height: 250px;'src="./content/<?php echo $dados['imagem'];?>" alt="Card image cap">
    <div class="card-body">
     <h5 class="card-title"><?php echo $dados['Nome']; ?></h5>
     <p class="card-text"><?php echo $dados['Descricao']; ?></p>
     <a href="./produto-detalhe.php?id=<?php echo $dados['ProdutosID'];?>&tipo=promocao" class="btn btn-primary">Comprar</a>
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

   
