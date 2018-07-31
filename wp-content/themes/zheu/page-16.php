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
    <div class="h1"><?php the_title();?></div>
    <?php
    the_post();
    $content = get_the_content();
    if (get_field('file')){
        $content = str_replace('{DOWNLOAD_FILE}', '<div class="clear_both"></div><a href="'. get_field('file').'" class="file" download><svg aria-hidden="true" data-prefix="fal" data-icon="file" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" class="svg-inline--fa fa-file fa-w-12 fa-9x"><path fill="#000" d="M369.9 97.9L286 14C277 5 264.8-.1 252.1-.1H48C21.5 0 0 21.5 0 48v416c0 26.5 21.5 48 48 48h288c26.5 0 48-21.5 48-48V131.9c0-12.7-5.1-25-14.1-34zm-22.6 22.7c2.1 2.1 3.5 4.6 4.2 7.4H256V32.5c2.8.7 5.3 2.1 7.4 4.2l83.9 83.9zM336 480H48c-8.8 0-16-7.2-16-16V48c0-8.8 7.2-16 16-16h176v104c0 13.3 10.7 24 24 24h104v304c0 8.8-7.2 16-16 16z" class="file"></path></svg><span>Скачать</span></a><div class="clear_both"></div>' ,$content);
    }
    echo $content;
    ?>
    <div class="contact_form">
        <form method="POST" action="/form.php">
            <p class="description_text">Форма обращения заполняется на русском или белорусском языках:</p>

            <label class="form_label">Наименование и (или) адрес организации либо должность лица, которым направляется обращение</label>
            <input name="name" class="form_input" placeholder="сантехнику">

            <label class="form_label">Фамилия и собственное имя, отчество либо инициалы гражданина или лица, уполномоченного
                в установленном порядкsе подписывать обращения</label>
            <input name="name" class="form_input" placeholder="Константинопольский Константин Константинович">

            <label class="form_label">Почтовый адрес и индекс (адрес места жительства и (или) работы (учебы).</label>
            <input name="name" class="form_input" placeholder="123456">

            <label class="form_label">Адрес электронной почты</label>
            <input name="name" class="form_input">

            <label class="form_label">Текст обращения</label>
            <input name="name" class="form_input">
            <div class="radio">
                <label><input type="radio" name="optradio" checked>Option 1</label>
            </div>
            <div class="radio">
                <label><input type="radio" name="optradio">Option 2</label>
            </div>
        </form>
    </div>
</div>

<?php get_footer(); ?>
