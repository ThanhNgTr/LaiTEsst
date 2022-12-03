<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require "phpmailer/src/Exception.php";
require "phpmailer/src/PHPMailer.php";
require "phpmailer/src/SMTP.php";
include 'include/connect.php';
include 'admin/function/function.php';
function rand_string($length)
{
    $str = "";
    $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    $size = strlen($chars);
    for ($i = 0; $i < $length; $i++) {
        $str .= $chars[rand(0, $size - 1)];
    }
    return $str;
}
if (isset($_POST['submit'])) {
    $usnam = $_POST['usern'];
    $emaill = $_POST['email'];
    $sql = "select * FROM nguoidung WHERE username='{$usnam}' and email='{$emaill}'  ";
    $result = mysqli_query($link, $sql);
    $row = mysqli_num_rows($result);
    if ($row >= 1) {
        $pass = rand_string(6);
        $mkm = $pass;
        $mail = new PHPMailer(true);
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->Username = 'quanghongnguyen115@gmail.com';
        $mail->Password = 'itkgdixgirxqrjro';
        $mail->SMTPSecure = 'ssl';
        $mail->Port = 465;
        $update = "UPDATE nguoidung SET password = MD5('$pass') WHERE username='{$usnam}' and email='{$emaill}'";
        $query = mysqli_query($link, $update);
        $mail->setFrom('quanghongnguyen115@gmail.com');
        $mail->addAddress($emaill);
        $mail->isHTML(true);
        $mail->Subject = "New password!!!";
        $mail->Body = "Mật khẩu mới của bạn là: $mkm";
        $mail->send();
        echo "
        <script>
        alert('Mật khẩu đã được gửi đến mail của bạn');
        document.location.href = 'index.php';
        </script>
        ";
    } else {
        echo "
    <script>
    alert('Tài khoản  hoặc Email của bạn không tồn tại');
    document.location.href = 'index.php';
    </script>
    ";
    }
}
