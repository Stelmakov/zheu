<?php get_header(); ?>
    <div class="left_column">
        <?php kama_breadcrumbs('<img src="/wp-content/themes/zheu/img/arrow-left.png">'); ?>
        <div class="left_links">
            <?php
            if( have_rows('links') ):
                while ( have_rows('links') ) : the_row();
                    $link = get_sub_field('link');
                    echo '<a class="multiline_text" href="' . get_the_permalink($link->ID) . '"><span>' .$link->post_title .'</span></a>';
                endwhile;
            endif;
            ?>
        </div>

    </div>
    <div class="right_column">
        <div class="h1"><?php single_cat_title("", true); ?></div>
        <div class="news">
            <?php
                $posts = get_posts(array('numberposts' => 9999, 'category' => 6));
                $currentYear = $_GET['y'] ? $_GET['y'] : date('Y');
                $currentYearPosts = array();
                $otherYears = array();
                foreach ($posts as $post){
                    if (date('Y', strtotime($post->post_date)) == $currentYear){
                        $currentYearPosts[] = $post;
                    } else {
                        $otherYears[] = date('Y', strtotime($post->post_date));
                    }
                }
                $otherYears = array_unique($otherYears);
                if (!$otherYears){
                    for($i=1;$i<3;$i++){
                        $otherYears[] = (string)$currentYear - $i;
                    }
                }
                foreach ($currentYearPosts as $currentYearPost) {
                    $content_post = get_post($currentYearPost->ID);
                    $content = $content_post->post_content;
                    $content = apply_filters('the_content', $content);
                    $content = str_replace(']]>', ']]&gt;', $content);
                    $content = substr($content, 0 , 340);
                   echo '<div class="article"><span class="date">'.to_format($post->post_date).'</span><span class="href_container"><a href=' .  get_the_permalink($currentYearPost->ID). '">'.$currentYearPost->post_title .'</a></span><div class="content">' . $content . '</div></div>';
                 }
            ?>
            <div class="other_years">
                <?php foreach($otherYears as $year){ ?>
                    <a href="?y=<?php echo $year ?>"><?php echo $year ?></a>
                <?php } ?>
            </div>
        </div>
    </div>
<?php get_footer(); ?>