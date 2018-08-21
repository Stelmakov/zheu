<?php/** * The template for displaying the footer * * Contains the closing of the #content div and all content after. * * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials * * @package WordPress * @subpackage Twenty_Seventeen * @since 1.0 * @version 1.2 */?>
<div class="clear_both"></div>
<div class="big_separator"></div>
<div class="bottom_images not-mobile">
    <div class="bottom_images_row">
        <a href="http://president.gov.by/"><img src="/wp-content/themes/zheu/img/1_03.png" alt=""></a>
        <a href="http://www.mjkx.gov.by/"><img src="/wp-content/themes/zheu/img/1_05.png" alt=""></a>
        <a href="http://www.fr.gov.by/"><img src="/wp-content/themes/zheu/img/1_07.png" alt=""></a>
        <a href="http://115.бел/"><img src="/wp-content/themes/zheu/img/1_09.png" alt=""></a>
    </div>
    <div class="bottom_images_row">
        <a href="http://pravo.by/"><img src="/wp-content/themes/zheu/img/1_15.png" alt=""></a>
        <a href="http://vtoroperator.by/"><img src="/wp-content/themes/zheu/img/1_17.png" alt=""></a>
        <a href="https://minsk.gov.by/ru/"><img src="/wp-content/themes/zheu/img/1_20.png" alt=""></a>
    </div>
</div>
<div class="bottom_images mobile">
    <a href="http://president.gov.by/"><img src="/wp-content/themes/zheu/img/mobile/03.png" alt=""></a>
    <a href="http://www.mjkx.gov.by/"><img src="/wp-content/themes/zheu/img/mobile/06.png" alt=""></a>
    <a href="http://www.fr.gov.by/"><img src="/wp-content/themes/zheu/img/mobile/08.png" alt=""></a>
    <a href="http://115.бел/"><img src="/wp-content/themes/zheu/img/mobile/10.png" alt=""></a>
    <a href="http://pravo.by/"><img src="/wp-content/themes/zheu/img/mobile/12.png" alt=""></a>
    <a href="http://vtoroperator.by/"><img src="/wp-content/themes/zheu/img/mobile/14.png" alt=""></a>
    <a href="https://minsk.gov.by/ru/"><img src="/wp-content/themes/zheu/img/mobile/16.png" alt=""></a>
</div>
<div class="footer">
    <div class="footer_item">
        <?php if (is_front_page()){ ?>
        <section>
            <?php } else { ?>
            <a href="/" class="no-border">
                <?php } ?> <img src="/wp-content/themes/zheu/img/logo.png" class="logo" alt="">
                <div class="logo_text">
                    <p class="logo_text_small">Коммунальное унитарное предприятие</p>
                    <p class="logo_text_big">«Жилищно-эксплуатационный участок №7 <br> Фрунзенского района г. Минска»</p>
                    <div class="bottom_links"> <span class="black"><?php echo (get_field('address') ? get_field('address') : '') ?></span> <span class="black"><?php echo (get_field('header_phone') ? get_field('header_phone') : '') ?></span> </div>
                </div>
                <?php if (is_front_page()){ ?> </section>
    <?php } else { ?> </a>
    <?php } ?> </div>
    <div class="footer_item">
        <?php get_search_form( true ); ?> </div>
    <div class="footer_item">
        <?php wp_nav_menu( array( 'theme_location'=> 'footer-menu') ); ?> </div>
    <div class="tof-logo"><img src="/wp-content/themes/zheu/img/TOF.svg" alt="TOF">
        <p>Комплексное продвижение</p>
    </div>
</div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="/wp-content/themes/zheu/js/jquery.maskedinput.min.js"></script>
<script src="/wp-content/themes/zheu/js/zheu.js"></script>
<?php wp_footer(); ?>
</body>

</html>