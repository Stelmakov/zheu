<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.2
 */

?>
    <div class="big_separator"></div>
    <div class="bottom_images">
        <div class="bottom_images_row">
            <img src="/wp-content/themes/zheu/img/1_03.png" alt="">
            <img src="/wp-content/themes/zheu/img/1_05.png" alt="">
            <img src="/wp-content/themes/zheu/img/1_07.png" alt="">
            <img src="/wp-content/themes/zheu/img/1_09.png" alt="">
        </div>
        <div class="bottom_images_row">
            <img src="/wp-content/themes/zheu/img/1_15.png" alt="">
            <img src="/wp-content/themes/zheu/img/1_17.png" alt="">
            <img src="/wp-content/themes/zheu/img/1_20.png" alt="">
        </div>
    </div>
    <div class="footer">
        <div class="footer_item">
            <a href ="/" class="no-border">
                <img src="/wp-content/themes/zheu/img/logo.png" class="logo" alt="">
                <div class="logo_text">
                    <p class="logo_text_small">Коммунальное унитарное предприятие</p>
                    <p class="logo_text_big">«Жилишно-эксплутационный участок №7 </br> Фрунзенского района г. Минска»</p>
                </div>
            </a>
            <span class="black"><?php echo (get_field('address') ? get_field('address') : '') ?></span>
            <span class="black"><?php echo (get_field('header_phone') ? get_field('header_phone') : '') ?></span>
        </div>
        <div class="footer_item">
            <?php get_search_form( true ); ?>
        </div>
        <div class="footer_item">
            <a href="<?php echo get_category_link(3)?>"><?php echo get_cat_name(3)?></a>
            <a href="<?php echo get_category_link(3)?>"><?php echo get_cat_name(3)?></a>
            <a href="<?php echo get_category_link(3)?>"><?php echo get_cat_name(3)?></a>
        </div>
    </div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="/wp-content/themes/zheu/js/zheu.js"></script>
<?php wp_footer(); ?>

</body>
</html>
