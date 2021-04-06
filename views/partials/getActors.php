
<?php
    $actors = get_all_actors();
    foreach($actors as $actor):
?>
<option value="<?=$actor->idActor?>"><?=$actor->nameActor?></option>
    <?php endforeach; ?>
