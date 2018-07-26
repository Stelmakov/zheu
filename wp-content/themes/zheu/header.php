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
        <div class="hamburger"></div>
    </div>

