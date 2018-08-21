<?php get_header(); ?>
<div class="left_column">
    <?php kama_breadcrumbs('<img src="/wp-content/themes/zheu/img/arrow_left.svg">'); ?>
    <div class="left_links">
        <?php
        if( have_rows('links') ):
            while ( have_rows('links') ) : the_row();
                $link = get_sub_field('link');
                $custom_link = get_sub_field('custom_link');
                $custom_header = get_sub_field('custom_header');
                echo '<a class="multiline_text" href="' . ($custom_link ? $custom_link : get_the_permalink($link->ID)) . '"><span>' . ($custom_header ? $custom_header :$link->post_title) .'</span></a>';
            endwhile;
        endif;
        ?>
    </div>

</div>
<div class="right_column">
    <div class="h1"><?php single_cat_title("", true); ?></div>
    <div class="gallery">
        <div class="row">
        <?php $i =0 ; if ( have_posts() ) : while ( have_posts() ) : the_post();?>
            <?php if ($i % 2 == 0 && $i != 10) {
                echo "</div><div class='row'>";
            }  $i++; ?>
            <div class="gallery_item">
				<a href="<?php echo get_permalink();?>">
					<div class="hover_element"></div>
					<span class="no-hover no-border">Подробнее</span><img class="arrow" src="/wp-content/themes/zheu/img/arrow_white.png" alt="Белая стрелка">
					<img src="<?php echo get_field('category_image', get_the_ID());?>" alt="Изображение галереи">
				</a>
            </div>
        <?php endwhile; else : ?>
            <p><?php esc_html_e( 'Sorry, no posts matched your criteria.' ); ?></p>
        <?php endif; ?>
        </div>
    </div>
</div>
<?php get_footer(); ?>