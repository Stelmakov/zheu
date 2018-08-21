<?php/** * The header for our theme * * This is the template that displays all of the <head> section and everything up until
<div id="content"> * * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials * * @package WordPress * @subpackage Twenty_Seventeen * @since 1.0 * @version 1.0 */?>
<!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js no-svg">

<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="shortcut icon" href="/wp-content/themes/zheu/img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/wp-content/themes/zheu/style.css">
    <title><?php bloginfo('name'); ?><?php wp_title(); ?></title>
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <?php wp_head(); ?>
</head>
<body>
<div class="nf_container">
    <div class="container_inner">
        <div class="left">
            <img src="/wp-content/themes/zheu/img/luk.jpg">
            <div class="text">
                <h1>Ошибка 404</h1>
                <p class="bold">Страница, которую Вы ищите, не найдена.</br>Возможно, она удалена или непрвильно введён её адрес.</p>
            </div>
        </div>

        <div class="vertical_separator not-mobile"></div>
        <div class="separator mobile"></div>
        <div class="right">
            <a href="/" class="no-border logo_container" >
                <img src="/wp-content/themes/zheu/img/logo.png" class="logo" alt="">
                <div class="logo_text">
                    <p class="logo_text_small">Коммунальное унитарное предприятие</p>
                    <p class="logo_text_big">«Жилищно-эксплуатационный участок №7 </br> Фрунзенского района г. Минска»</p>
                </div>
            </a>
            <div class="footer_menu"><div class="item"><a href="/">Главная</a></div><?php wp_nav_menu( array( 'theme_location'=> 'footer-menu') ); ?></div>
        </div>
    </div>
</div>

<?php wp_footer(); ?>
</body>

</html>

