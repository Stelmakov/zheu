<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */

get_header(); ?>
<div class="maps_container">
    <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A0d7646304205334a81789f8b9911e186eeae17881437a81bc623f185c8ada63a&amp;width=100%25&amp;height=400&amp;lang=ru_RU&amp;scroll=true"></script>
</div>
<div class="news_posts">
    <div class="h2">Новости</div>
    <div class="arrow"><a href="<?php echo get_category_link(6);?>" class="no-border small">Все новости<img src="/wp-content/themes/zheu/img/arrow.png" alt=""></a></div>
        <?php
        $catPost = get_posts('cat=6&posts_per_page=3');
        foreach ($catPost as $post) :  ?>
        <div class="post">
            <span class="date"><?php echo to_format($post->post_date); ?></span>
            <a href="<?php echo get_permalink($post) ?>" rel="bookmark" title="Permanent Link to <?php the_title_attribute(); ?>">
                <?php echo $post->post_title; ?>
            </a>
        </div>
        <?php  endforeach; wp_reset_postdata();?>

</div>
<a href="http://gkx.by">
    <img src="/wp-content/themes/zheu/img/kom_gram.png" class="kom_gram" alt="Коммунальная грамотность">
</a>
<div class="separator"></div>
<div class="home_services">

    <div class="h2">Услуги</div>
    <div class="services">
        <?php
        if( have_rows('services') ):
            while ( have_rows('services') ) : the_row();
                $service = get_sub_field('service');
                echo '<a href="' . get_the_permalink($service->ID) .'" class="service no-border"><div class="image_container"><img src="' . get_field('icon', $service->ID) .'"></div><p>'. $service->post_title .  '</p></a>';
            endwhile;
        endif;
        ?>
    </div>
    <div class="phones">
        <span>Вызвать мастера бытовых услуг</span>
        <?php
        if( have_rows('zhes_phones') ):
            while ( have_rows('zhes_phones') ) : the_row();
                $header = get_sub_field('header');
                $phone = get_sub_field('phone');
                echo '<div class="phone"><p class="bold">' . $header . '</p><a href="tel:' . $phone . '">' . $phone .'</a></div>';
            endwhile;
        endif;
        ?>
        <div class="arrow"><a href="<?php echo get_category_link(3);?>" class="no-border small">Все бытовые услуги и цены<img src="/wp-content/themes/zheu/img/arrow.png" alt=""></a></div>
    </div>
</div>

<?php get_footer(); ?>
