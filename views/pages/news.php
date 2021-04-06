<div id="main">
    <div id="content">

    <?php
        $allNews = get_all_news();
        foreach($allNews as $news):
    ?>
        <div class="oneNews">
            <h2><?=$news->newsHeading?></h2>
            <p><i><?=$news->newsTime?></i></p><br/>
            <p><?=$news->newsText?></p>
        </div>
        <?php endforeach; ?>
    </div>
</div>