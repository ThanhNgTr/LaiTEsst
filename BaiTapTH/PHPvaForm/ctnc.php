<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Phép tính</title>
</head>
<body>
<form action="kqctnc.php" method="post">
    <table align="center">
        <tr>
            <td colspan="2" style="text-align: center; font-size: 12px; color: blue;">
                <h1>Phép tính trên hai số</h1>
            </td>
        </tr>
        <tr>
            <td style="color: darkred; text-align: right;">Chọn phép tính:</td>
            <td style="color: red;">
                <input type= "radio" name= "pt" value= "Cộng" checked>Cộng
                <input type= "radio" name= "pt"  value= "Trừ">Trừ
                <input type= "radio" name= "pt" value= "Nhân">Nhân
                <input type= "radio" name= "pt" value= "Chia">Chia
            </td>
        </tr>
        <tr>
            <td style="text-align: right; color: blue;">Số thứ nhất:</td>
            <td> <input type="text" name="a" style="width: 150px" 
                        value="<?php if (isset($a)) echo $a;?>"></td>
        </tr>
        <tr>
            <td style="text-align: right; color: blue;">Số thứ hai:</td>
            <td> <input type="text" name="b" style="width: 150px" 
                        value="<?php if (isset($b)) echo $b;?>"></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="submit" name="submit" value="Tính">
            </td>
        </tr>
    </table>
</form>

</body>
</html>