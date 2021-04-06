<div id="main">
    <div id="content">

    <?php
        $comingSoon = get_all_soon();
        foreach($comingSoon as $soon):
    ?>
        <div class="comingSoon">
            <div class="soonPic">
                <img src="assets/images/soon/<?=$soon->soonPicture?>" alt="<?=$soon->soonHeading?>" />
            </div>
            <div class="soonInfo">
                <h2><?=$soon->soonHeading?></h2>
                <p><i class="colorIt">Relese date: </i><i><?=$soon->soonDate?></i></p><br>
                <p><?=$soon->soonDescription?></p>
            </div>
        </div>
        <?php endforeach; ?>
    </div>
</div>