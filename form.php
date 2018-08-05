<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST'){

    require_once("wp-load.php");
    $data = &$_POST;
    $current_url = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]";
    $secret = get_field('recaptcha_secret',7);
    require_once 'recaptcha/autoload.php';
    $recaptcha = new \ReCaptcha\ReCaptcha($secret);
    $ip = $_SERVER['HTTP_CLIENT_IP']?$_SERVER['HTTP_CLIENT_IP']:($_SERVER['HTTP_X_FORWARDE‌​D_FOR']?$_SERVER['HTTP_X_FORWARDED_FOR']:$_SERVER['REMOTE_ADDR']);
    $resp = $recaptcha->setExpectedHostname('zheu.loc')
        ->verify($data['g-recaptcha-response'], $ip);
    $response = array();
    $response['delivered'] = true;
    if ($resp->isSuccess()) {
        foreach ($data as $key => $item){
            if (empty($item)){
                $response['errors'][$key] = 'Обязательно заполните это поле';
            }
        }
        if (isset($response['errors'])){
            die(json_encode($response, JSON_UNESCAPED_UNICODE));
        }

        $email = get_field('email',7);
        $message = '';
        foreach ($data as $key => $item){
            if ($key != 'send_from' && $key != 'g-recaptcha-response'){
                $message .= $key . ': ' . $item . ' \r\n ';
            }
        }
        if (isset($data['files']) && $data['files'] != 'undefined'){
            $files = json_decode(stripslashes($data['files']));
            foreach($files as $name => $file){
                $fileExt = end(explode('.', $name));
                $target = 'users_data/'. rand(100,900000000000000000000) . '.' . $fileExt;
                file_put_contents($target,base64_decode($file));
                $message .= 'Прикреплённый файл: <a href="'. $current_url . '/' . $target . '">' . $target .'</a>\r \n';
            }
        }
        $message = wordwrap($message, 70, "\r\n");

        mail($email, $data['send_from'], $message);
    } else {
        $response['errors']['g-recaptcha-response'] = 'Пожалуйста, заполните поле ReCaptcha';
    }
    die(json_encode($response, JSON_UNESCAPED_UNICODE));
} else {
    header('Location: '. $current_url);
}
