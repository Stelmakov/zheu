<?php/** * The header for our theme * * This is the template that displays all of the <head> section and everything up until
<div id="content"> * * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials * * @package WordPress * @subpackage Twenty_Seventeen * @since 1.0 * @version 1.0 */?>
<!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js no-svg">

<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/wp-content/themes/zheu/css/bootstrap.min.css">
    <link rel="shortcut icon" href="/wp-content/themes/zheu/img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/wp-content/themes/zheu/style.css">
    <title><?php bloginfo('name'); ?><?php wp_title(); ?></title>

    <script src='https://www.google.com/recaptcha/api.js'></script>
    <?php wp_head(); ?>
</head>

<body>
<div class="zh_container">
    <div class="top_menu">
        <?php wp_nav_menu( array( 'theme_location'=> 'header-menu', 'walker' => new Walker_Quickstart_Menu() ) ); ?>
        <div class="hamburger hamburger--elastic ">
            <div class="hamburger-box">
                <div class="hamburger-inner"></div>
            </div>
        </div>
    </div>
    <div class="full_menu_container">
        <div class="full_menu">
            <?php wp_nav_menu( array( 'theme_location'=> 'full-menu') ); ?> </div>
    </div>
    <div class="container_inner">
        <div class="header">
            <div class="header_item">
                <div class="no-border mobile-flex">
                    <?php if (is_front_page()){ ?>
                    <section>
                        <?php } else { ?>
                        <a href="/">
                            <?php } ?> <img src="/wp-content/themes/zheu/img/logo.svg" class="logo" alt="">
                            <?php if (is_front_page()){ ?> </section>
                <?php } else { ?> </a>
                <?php } ?>
                    <?php if (is_front_page()){ ?>
                    <section>
                        <?php } else { ?>
                        <a href="/">
                            <?php } ?>
                            <div class="logo_text">
                                <p class="logo_text_small">Коммунальное унитарное предприятие</p>
                                <p class="logo_text_big">«Жилищно-эксплуатационный участок №7 <br> Фрунзенского района г. Минска»</p>
                            </div>
                            <?php if (is_front_page()){ ?> </section>
                <?php } else { ?> </a>
                <?php } ?>
                    <div class="hamburger hamburger--elastic mobile">
                        <div class="hamburger-box">
                            <div class="hamburger-inner"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header_item">
                <div class="header_phone">
                    <div class="header_phone_item"> <span>Приёмная</span> </div>
                    <div class="header_phone_item">
                        <a class="no-border" href="tel:<?php echo (get_field('header_phone',7) ?  str_replace(' ', '' , get_field('header_phone',7)) : '') ?>">
                            <?php echo (get_field( 'header_phone',7) ? the_field( 'header_phone',7) : '') ?>
                        </a>
                    </div>
                </div>
            </div>
            <div class="header_item"> <a href="<?php echo get_permalink(62); ?>">График приёмов</a> </div>
        </div>
        <div class="problem mobile"> <a class="btn problem-inner" href="<?php echo get_permalink(88); ?>">Сообщить о проблеме</a> <span class="problem-inner">Чтобы сделать район лучше</span> </div>