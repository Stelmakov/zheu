$(document).ready(function(){
   $('.hamburger').on('click',function(){
       if($(this).hasClass('is-active')){
           $(this).removeClass('is-active')
       } else {
           $(this).addClass('is-active')
       }
   })
    $(".phone").mask("+375 (99) 999-99-99");
   $('.menu-item-type-custom').click(function(){
       $('.sub-menu',this).toggle();
       if($(this).hasClass('isToggled')){
           $($(this).removeClass('isToggled'))
       } else{
           $(this).addClass('isToggled')
       }
        return false;
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
                    if (/^[\],:{}\s]*$/.test(text.replace(/\\["\\\/bfnrtu]/g, '@').
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