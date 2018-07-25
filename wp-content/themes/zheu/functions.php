<?php
add_theme_support( 'menus' );
function register_my_menu() {
    register_nav_menu('header-menu',__( 'Header Menu' ));
}
add_action( 'init', 'register_my_menu' );

class Walker_Quickstart_Menu extends Walker_Nav_Menu {


    function end_el( &$output, $item, $depth = 0, $args = array() ) {
        if ($item->menu_order == 3 ){
            $output .= "    
            <div class=\"top_menu_item problem\">
                <a href=\"#\">Сообщите о проблеме</a>
                <span>Чтобы сделать район лучше</span>
            </div>";

        }
    }

}