<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Năm âm lịch</title>
</head>
<body>
<?php
    if(isset($_POST['duonglich']))
    {
        $duong = $_POST['duonglich'];
        $mang_can=array('Quý','Giáp','Ắt','Binh','Đinh','Mậu','Kỷ','Canh','Tân','Nhâm');
        $mang_chi=array('Hợi','Tý','Sửu','Dần','Mão','Thìn','Tỵ','Ngọ','Mùi','Thân','Dậu','Tuất');
        $mang_hinh=array('Hợi','Tý','Sửu','Dần','Mão','Thìn','Tỵ','Ngọ','Mùi','Thân','Dậu','Tuất');
        if(is_numeric($duong) and $duong > 0)
        {
            $nam = $duong - 3;
            $can = $nam%10;
            $chi = $nam%12;
            $nam_al = $mang_can[$can];
            $nam_al = $nam_al.' '.$mang_chi[$chi];
            $hinh = $mang_hinh[$chi];
            $hinh_anh = "<img src='12con_giap/$hinh.jpg' width='200px' height='130px'>"; 
        }
        else
        {
            $nam_al = null;
        }
    }
?>
<form action="" method="post">
    <table align="center" bgcolor="#AEE4FF" style="width: 400px; height: auto;">
        <tr>
            <td colspan="3" bgcolor="#005CB9" style="text-align: center; color: white; height: auto; font-size: 10px;">
                <h1>TÍNH NĂM ÂM LỊCH</h1>
            </td>
        </tr>
        <tr align="center" style="color: darkblue;">
            <td>Năm dương lịch</td>
            <td></td>
            <td>Năm âm lịch</td>
        </tr>
        <tr align="center">
            <td> 
                <input type="text" name="duonglich" style="width: 90px;" require 
                    value="<?php if (isset($duong)) echo $duong;?>">
            </td>
            <td>
                <input type="submit" name="submit" style="background-color: lightyellow;" value="=>">
            </td>
            <td> 
                <input type="text" name="amlich" style="background-color: lightyellow; color: red; width: 120px" readonly
                    value="<?php if (isset($duong)) echo $nam_al;?>">
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <?php if (isset($nam_al)) echo $hinh_anh;?>
            </td>
        </tr>
    </table>
</form>

</body>
</html>