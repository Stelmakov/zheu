<form role="search" method="get" id="searchform" action="<?php echo home_url( '/' ) ?>" >
<!--    <img src="/wp-content/themes/zheu/img/icon_search.svg" alt="search">-->

    <input type="submit" id="searchsubmit" value=""/>
    <input type="text" value="<?php echo get_search_query() ?>" name="s" id="searchinput" placeholder="Поиск по сайту" />
</form>