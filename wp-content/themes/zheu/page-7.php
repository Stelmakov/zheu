<?php
get_header();
?>
<div class="maps_container">
    <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A0d7646304205334a81789f8b9911e186eeae17881437a81bc623f185c8ada63a&amp;width=100%25&amp;height=100%25&amp;lang=ru_RU&amp;scroll=true">
    </script>
</div>
<div class="news_posts">
    <div class="h1 small_title_mobile">Новости
    </div>
    <div class="arrow not-mobile">
        <a href="<?php
        echo get_category_link(6);
        ?>" class="no-border ">Все новости
            <img src="/wp-content/themes/zheu/img/arrow.png" alt="">
        </a>
    </div>
    <?php
    $catPost = get_posts('cat=6&posts_per_page=3');
    foreach ($catPost as $post):
        ?>
        <div class="post">
    <span class="date">
      <?php
      echo to_format($post->post_date);
      ?>
    </span>
            <a href="<?php
            echo get_permalink($post);
            ?>" rel="bookmark" class="multiline_text no-hover" title="Permanent Link to <?php
            the_title_attribute();
            ?>"><span>
                <?php
                echo $post->post_title;
                ?></span>
            </a>
        </div>
    <?php
    endforeach;
    wp_reset_postdata();
    ?>
</div>
<div class="arrow mobile for_news">
    <a href="<?php
    echo get_category_link(6);
    ?>" class="no-border ">Все новости
        <img src="/wp-content/themes/zheu/img/arrow.png" alt="">
    </a>
</div>
<a class="gkx no-hover" href="http://gkx.by">
    <img src="/wp-content/themes/zheu/img/kom_gram.png" class="kom_gram not-mobile" alt="Коммунальная грамотность">
    <img src="/wp-content/themes/zheu/img/gkx_mobile.svg" class="kom_gram mobile" alt="Коммунальная грамотность">
</a>
<div class="separator">
</div>
<div class="home_services">
    <div class="h1">Услуги
    </div>
    <div class="services">
        <?php
        if (have_rows('services')):
            while (have_rows('services')):
                the_row();
                $service = get_sub_field('service');
                echo '<a href="' . get_the_permalink($service->ID) . '" class="service no-border"><div class="image_container"><img  class="non_hover" src="' . get_field('icon', $service->ID) . '" alt="icon"><img class="hover_icon" src="' . get_field('hover_icon', $service->ID) . '" alt="icon"></div><p><span>' . $service->post_title . '</span></p></a>';
            endwhile;
        endif;
        ?>
    </div>
    <div class="phones not-mobile">
    <span>Вызвать мастера бытовых услуг
    </span>
        <?php
        if (have_rows('zhes_phones')):
            while (have_rows('zhes_phones')):
                the_row();
                $header = get_sub_field('header');
                $phone  = get_sub_field('phone');
                echo '<div class="phone"><p class="bold">' . $header . '</p><a href="tel:' .  str_replace(' ', '' ,$phone) . '">' . $phone . '</a></div>';
            endwhile;
        endif;
        ?>
        <div class="arrow">
            <a href="<?php
            echo get_permalink(66);
            ?>" class="no-border">Все бытовые услуги и цены
                <img src="/wp-content/themes/zheu/img/arrow.png" alt="">
            </a>
        </div>
    </div>
</div>
<div class="mobile zhes_phones">
    <div class="separator">
    </div>
    <span class="top_span">Выберите ЖЭС, который обслуживает ваш дом
  </span>
    <div class="phones_inner">
        <?php
        if (have_rows('zhes_phones')):
            while (have_rows('zhes_phones')):
                the_row();
                $header = get_sub_field('header');
                $phone  = get_sub_field('phone');
                echo '<div class="phone"><div class="bold phone_header" data-name=" ' . $header . '">' . str_replace('№', '', $header) . '</div><a href="tel:' .  str_replace(' ', '' ,$phone) . '">' . $phone . '</a></div>';
            endwhile;
        endif;
        ?>
    </div>
    <a class="mobile_zhes_phone">
    </a>
    <div class="arrow">
        <a href="<?php
        echo get_permalink(66);
        ?>" class="no-border no-hover">Все бытовые услуги и цены
            <img src="/wp-content/themes/zheu/img/arrow.png" alt="">
        </a>
    </div>
</div>
<?php
get_footer();
?>
