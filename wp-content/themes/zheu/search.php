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
        <div class="h1">Результаты поиска</div>
        <div class="news">
            <?php if ( have_posts() ) : ?>
            <?php $i = 1; while ( have_posts() ) : the_post();
            $i++;
             endwhile; ?>
                <span class="results_count">Найдено результатов: <?php echo $i; ?></span>
                <?php while ( have_posts() ) : the_post();
                    $content_post = get_post(get_the_ID());
                    $content = $content_post->post_content;
                    $content = apply_filters('the_content', $content);
                    $content = str_replace(']]>', ']]&gt;', $content);
                    $content = substr($content, 0 , 340); ?>
                    <div class="article">
                            <span class="href_container">
                                <a href=<?php echo get_the_permalink(get_the_ID()) ?>"><?php the_title();?></a>
                            </span>
                            <div class="content"><?php echo $content; ?></div>
                            <div class="clear_both"></div>
                        </div>
                <?php endwhile; ?>
            <?php else : ?>
                <p>Ничего не найдено</p>
            <?php endif; ?>
        </div>
    </div>
<?php get_footer(); ?>