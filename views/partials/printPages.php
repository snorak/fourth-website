<div id="pagination">
<?php
    for($page = 1; $page <= $number_of_pages; $page++):
?>
    <a href="index.php?page=all&number=<?=$page?>"><?=$page?></a>
<?php endfor; ?>
</div>