<?php
add_theme_support( 'menus' );
function register_my_menu() {
    register_nav_menu('header-menu',__( 'Header Menu' ));
}
add_action( 'init', 'register_my_menu' );

class Walker_Quickstart_Menu extends Walker_Nav_Menu {


    function start_el(&$output, $item, $depth, $args) {
        // назначаем классы li-элементу и выводим его
            $class_names = join( ' ', $item->classes );
            $class_names = ' class="' .esc_attr( $class_names ). ' ' .($item->type == "custom" ? "problem" : "") . ' "';
            $output.= '<li id="menu-item-' . $item->ID . '"' .$class_names. '>';

            // назначаем атрибуты a-элементу
            $attributes = !empty( $item->url ) ? ' href="' .esc_attr($item->url). '"' : '';
            $item_output = $args->before;

            // проверяем, на какой странице мы находимся
            $current_url = (is_ssl()?'https://':'http://').$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
            $item_url = esc_attr( $item->url );
            if ( $item_url != $current_url ) $item_output.= '<a ' . ($item->type == "custom" ? "class=\"btn btn-default problem-inner\" " : ""). $attributes .'>'.$item->title.'</a>' . ($item->type == "custom" ? "<span class='problem-inner'>Чтобы сделать район лучше</span>" : "");
            else $item_output.= $item->title;

            // заканчиваем вывод элемента
            $item_output.= $args->after;
            $output.= apply_filters( 'walker_nav_menu_start_el', $item_output, $item, $depth, $args );

    }

}