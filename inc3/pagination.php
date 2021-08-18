<?php
include("connect.php");
?>
<?php
$product_per_page =9;
$q = mysqli_query($connect, "SELECT COUNT(ID) AS total FROM sdlc" );

$rs = mysqli_fetch_assoc($q);

$total_products = $rs['total'];
$page = ceil($total_products / $product_per_page);
if(!empty($_GET['page']))
{
	$curent_page=$_GET['page'];
}
else
{
	$curent_page=1;

}
?>
<div class="pagination-wrap">
	<div class="pagination">
		<?php for( $i = 0 ; $i < $page ; $i++ )
		{
			?>
			<a href="index.php?page= <?= $i+1?>"
			<?php
			if($curent_page==($i+1))
			{
				echo "class='active'";
			}
			else
			{
				echo "";
			}
			?>	
		    >
		    <?php echo $i+1 ?>
			</a>
		<?php } ?>
		
	</div>
	
</div>