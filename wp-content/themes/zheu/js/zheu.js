$(document).ready(function(){

    var menu_selected_item;

    if ($(document).width() < 768){
        $('.full_menu .sub-menu').eq(0).prepend('<li><a href="/">Главная</a></li>')
    }

   $('.hamburger').on('click',function(){

       if($(this).hasClass('is-active')){

           $(this).removeClass('is-active');

           $('.full_menu_container').fadeOut();

           $(this).css('position','relative');

           $(this).css('left','auto');

           $(this).css('top','auto');

       } else {

           $(this).addClass('is-active');

           var offset = $(this).offset();

           $(this).css('position','fixed');

           $(this).css('left',offset.left);

           $(this).css('top',offset.top);

           $('.full_menu_container').fadeIn();

       }

   });

    $(".phone").mask("+375 (99) 999-99-99");

   $('.menu-item-type-custom a[href="#"]').click(function(){

       $('.top_menu .menu-item-type-custom').not(this).removeClass('isToggled');


       if($(this).parents('li').hasClass('isToggled')) {

           menu_selected_item = null;

           return true;

       } else {
           menu_selected_item = $(this).parents('li');

           $('.menu-item-type-custom a').removeClass('isToggled');

           if ($(document).width() < 1200){

               var a_offset = $(this).offset();

               var li_offset = $(this).parents('li').offset();

               if ($(document).width() < 1230){
                   res_offset = 0;
               }
               $('.fake_header').css('margin-left',a_offset.left - li_offset.left - res_offset);

               $('.fake_header').css('width',$(this).width());

               $('.fake_header').css('text-align','center');

           }

           $('.wrap').css('z-index','40');

           $(this).parents('li').addClass('isToggled')

       }

        return false;

   });

    $('.menu-item-type-custom .fake_header a').click(function(){

        $('.top_menu .menu-item-type-custom').removeClass('isToggled');

        $('.wrap').css('z-index','10');

        return false;

    });

   $('.zhes_phones .phone').on('click',function(){

       $('.zhes_phones .phone').removeClass('active');

       $('.mobile_zhes_phone').attr('href',$('a',this).attr('href'));

       $(this).addClass('active');

       $('.mobile_zhes_phone').empty();

       $('.mobile_zhes_phone').append('<span>Вызвать мастера бытовых услуг ' + $('.phone_header',this).attr('data-name') + '</span>');

       $('.mobile_zhes_phone').append('<p class="href">' + $('a',this).text() + '</p>');

   });

    $('.zhes_phones .phone').eq(0).click();

    $('#searchform').on('click',function(){

        if ($(document).width() > 971 && !$(this).hasClass('activated')){

            var res_offset = 15;

            if ($(document).width() < 1200){

                res_offset = 0;

            }

            var offset = $('.footer').width() - $('.footer .footer_item').eq(1).width() - $('.footer .footer_item').eq(2).width() - res_offset;

            $(this).addClass('activated');

            $(this).css('left', offset);

            $(this).animate({width:$('.footer').width()  - $('.footer .footer_item').eq(0).width() - res_offset});



        }

    });

    $(document).on('click',function(event){

        if (menu_selected_item){
            menu_selected_item.removeClass('isToggled');
            menu_selected_item = null;
        }

        if (event.target.id != 'searchform' && event.target.id != 'searchsubmit' && event.target.id != 'searchinput'){

            $('#searchform').css('width', 'auto');

            $('#searchform').removeClass('activated');

        }

    });

    $(document).ready(function() {

        var $window = $(window);



        function checkWidth() {

            var windowsize = $window.width();

            if (windowsize > 1200) {

                if(!$('.bottom_images .bottom_images_row').length){

                    $('.bottom_images img:lt(4)').wrapAll('<div class=\'bottom_images_row\'></div>');

                    $('.bottom_images img').slice(4, 7) .wrapAll('<div class=\'bottom_images_row\'></div>');

                }

            } else {

                if($('.bottom_images .bottom_images_row').length) {

                    $('.bottom_images .bottom_images_row img').unwrap();

                }

            }

        }

        // Execute on load

        checkWidth();

        // Bind event listener

        $(window).resize(checkWidth);



        $('#file_upload').change(function() {

            // var files = [];

            window.jsonFiles = {};

            function getBase64(file) {

                var reader = new FileReader();

                reader.readAsDataURL(file);

                reader.onload = function () {

                    window.jsonFiles[file.name] = reader.result.split(',').pop();

                };

                reader.onerror = function (error) {

                    console.log('Error: ', error);

                };

            }

            $.each($('#file_upload')[0].files,function(index,item){

                // files.push(item);

                $('.files_container').append('<span class="file_name"><label>' + item.name + '</label><a class="delete"><svg aria-hidden="true" data-prefix="fal" data-icon="times" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" class="svg-inline--fa fa-times fa-w-10 fa-7x"><path fill="#FF1219" d="M193.94 256L296.5 153.44l21.15-21.15c3.12-3.12 3.12-8.19 0-11.31l-22.63-22.63c-3.12-3.12-8.19-3.12-11.31 0L160 222.06 36.29 98.34c-3.12-3.12-8.19-3.12-11.31 0L2.34 120.97c-3.12 3.12-3.12 8.19 0 11.31L126.06 256 2.34 379.71c-3.12 3.12-3.12 8.19 0 11.31l22.63 22.63c3.12 3.12 8.19 3.12 11.31 0L160 289.94 262.56 392.5l21.15 21.15c3.12 3.12 8.19 3.12 11.31 0l22.63-22.63c3.12-3.12 3.12-8.19 0-11.31L193.94 256z" class=""></path></svg></a></span>');



                getBase64(item);

            });



        });

        $('body').on('click','.delete',function(){

            delete window.jsonFiles[$(this).parent().find('label').text()]

            $(this).parent().remove();

        });

        $('#form').submit(function(e){

            e.preventDefault();

            if($('.form_send').hasClass('disabled')){

                return false;

            }
            $('.label_success').hide();

            $('.form_send').addClass('disabled');

            $('.form_send').removeClass('success');

            $('.form_input').attr('placeholder','').removeClass('error');



            var form_data = new FormData(this);

            form_data.append('files',JSON.stringify(window.jsonFiles));

            $.ajax({

                type: "POST",

                processData: false,

                contentType: false,

                url: $('.form').attr('action'),

                data: form_data,

                success: function (data) {

                    $('.form_send').removeClass('disabled');

                    if (/^[\],:{}\s]*$/.test(data.replace(/\\["\\\/bfnrtu]/g, '@').

                    replace(/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g, ']').

                    replace(/(?:^|:|,)(?:\s*\[)+/g, ''))) {

                        data = JSON.parse(data);

                        if(data.errors){

                            $.each(data.errors,function(index,value){

                                if (index == 'g-recaptcha-response'){

                                    $('.label_error.recaptcha').text('Подтвердите что вы не робот')

                                } else {

                                    $('[name="' + index +'"]').attr('placeholder',value).addClass('error')

                                }

                            });

                        } else {

                            $('.label_error').text('');

                            $('.form_send').addClass('success');
                            $('.label_success').show();
                        }

                        if (!data.delivered){

                            $('.label_error').text('Что- то пошло не так, пожалуйста свяжитесь с администратором.')

                        }

                        grecaptcha.reset();

                        return false;

                    } else {

                        $('.label_error').text('Что- то пошло не так, пожалуйста свяжитесь с администратором.')

                    }



                }

            });

            return false;

        })

    });



});