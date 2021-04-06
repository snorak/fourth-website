<!-- START PAGE SOURCE -->
<div id="shell">
  <div id="header">
    <h1 id="logo"><a href="index.php">MovieHunter</a></h1>
    <div id="navigation">
      <ul>
        <?php
          if(isset($_SESSION['username'])) {
            $username = $_SESSION['username'];
          }
          if(isset($_SESSION['userIdRole'])) {
            $roleId = $_SESSION['userIdRole'];
          }
          
          $menu = get_menu();
          foreach($menu as $one):
            if(!isset($_SESSION['userIdRole']) && $one->title != "ADMIN" && $one->title != "LOGOUT" && $one->title != "PROFILE"):
        ?>
        <li><a href="<?=$one->href?>"><?=$one->title?></a></li>
        <?php
          elseif(isset($_SESSION['userIdRole']) && $roleId == 1 && $one->title != "ADMIN" && $one->title != "LOGIN"):
            if($one->title == "PROFILE"):
        ?>
        <li><a href="<?=$one->href?>"><?=strtoupper($username)?></a></li>
           <?php 
              else:
           ?>
        <li><a href="<?=$one->href?>"><?=$one->title?></a></li>
          <?php endif; ?>
        <?php
            elseif(isset($_SESSION['userIdRole']) && $roleId == 2 && $one->title != "LOGIN"):
        ?>
        <li><a href="<?=$one->href?>"><?=$one->title?></a></li>
          <?php
             endif;
             endforeach; 
          ?>
      </ul>
    </div>
    <div id="sub-navigation">
      <ul>
        <?php
          $submenu = get_submenu();
          foreach($submenu as $key=>$one):
        ?>
        <?php
          if($key != 0):
        ?>
        <li><a class="sort" data-id="<?=$one->idSubmenu?>" href="<?=$one->href?>"><?=$one->title?></a></li>
        <?php
          else:
        ?>
        <li><a href="<?=$one->href?>"><?=$one->title?></a></li>  
        <?php
          endif;
        ?>
        <?php endforeach; ?>
      </ul>
      <div id="search">
        <form id="forma">
          <label id="label" for="search-field">SEARCH</label>
          <input type="text" name="search field" placeholder="Enter search here" id="search-field" class="blink search-field"  />
          <input type="button" value="GO!" class="search-button" />
        </form>
      </div>
    </div>
  </div>