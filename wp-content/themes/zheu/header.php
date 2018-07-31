<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js no-svg">
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="/wp-content/themes/zheu/style.css">

<?php wp_head(); ?>
</head>

<body>
<div class="zh_container">
    <div class="top_menu">
        <?php wp_nav_menu( array( 'theme_location' => 'header-menu', 'walker'  => new Walker_Quickstart_Menu() ) ); ?>
        <div class="hamburger hamburger--elastic ">
            <div class="hamburger-box">
                <div class="hamburger-inner"></div>
            </div>
        </div>
    </div>
    <div class="container_inner">
        <div class="header">
            <div class="header_item">
                <a href ="/" class="no-border">
                    <img src="/wp-content/themes/zheu/img/logo.png" class="logo" alt="">
                    <div class="logo_text">
                        <p class="logo_text_small">Коммунальное унитарное предприятие</p>
                        <p class="logo_text_big">«Жилишно-эксплутационный участок №7 </br> Фрунзенского района г. Минска»</p>
                    </div>
                </a>
            </div>
            <div class="header_item">
                <div class="header_phone">
                    <div class="header_phone_item">
                        <span>Приёмная</span>
                    </div>
                    <div class="header_phone_item">
                        <a class="no-border" href="tel:<?php echo (get_field('header_phone',7) ? the_field('header_phone',7) : '') ?>"><?php echo (get_field('header_phone',7) ? the_field('header_phone',7) : '') ?></a>
                    </div>
                </div>
            </div>
            <div class="header_item">
                <a href="">График приёмов</a>
            </div>
        </div>

