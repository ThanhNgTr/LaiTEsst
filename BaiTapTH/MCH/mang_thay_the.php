<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mảng thay thế</title>
</head>
<body>
<?php
if (isset($_POST['submit']) and isset($_POST['nhapmang']) and isset($_POST['cu']) and isset($_POST['moi'])){
    $nhapmang=$_POST['nhapmang'];
    $cu=$_POST['cu'];
    $moi=$_POST['moi'];
    $a = explode(",",$nhapmang);
    $xuatmang = implode(" ",$a);
    function thay_the($a, $cu, $moi)
    {
        for($i=0;$i<count($a);$i++)
        {
            if($a[$i]==$cu)
            {
                $a[$i] = $moi;
            }
        }
        $kq = implode(" ",$a);
        echo $kq;
    }
}
?>
<form action="" method="post">
    <table align="center" bgcolor="white" style="width: 400px; height: auto;">
        <tr>
            <td colspan="2" bgcolor="#cc0099" style="text-align: center; font-size: 10px; color: white;">
                <h1>THAY THẾ</h1>
            </td>
        </tr>
        <tr style="background-color: lightpink;">
            <td style="color: purple">Nhập các phần tử:</td>
            <td> <input type="text" name="nhapmang" style="width: 200px" required
                        value="<?php if (isset($nhapmang)) echo $nhapmang;?>"></td>
        </tr>
        <tr style="background-color: lightpink;">
            <td style="color: purple">Giá trị cần thay thế:</td>
            <td> <input type="text" name="cu" style="width: 100px" required
                        value="<?php if (isset($cu)) echo $cu;?>"></td>
        </tr>
        <tr style="background-color: lightpink;">
            <td style="color: purple">Giá trị thay thế:</td>
            <td> <input type="text" name="moi" style="width: 100px" required
                        value="<?php if (isset($moi)) echo $moi;?>"></td>
        </tr>
        <tr style="background-color: lightpink;">
            <td></td>
            <td>
                <input type="submit" name="submit" style="background-color: lightyellow; width: auto;" value="Thay thế">
            </td>
        </tr>
        <tr>
            <td style="color: purple">Mảng cũ:</td>
            <td>
                <input type="text" name="a" style="width: 150px; width: 200px; background-color: lightcoral;" readonly
                    value="<?php if (isset($nhapmang) && isset($cu) && isset($moi)) echo $xuatmang;?>">
            </td>
        </tr>
        <tr>    
            <td style="color: purple">Kết quả sau khi thay thế:</td>
            <td> <input type="text" name="kq" style="width: 150px; width: 200px; background-color: lightcoral;" readonly
                    value="<?php if (isset($nhapmang) && isset($cu) && isset($moi)) thay_the($a, $cu, $moi);?>">
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                (<h style="color: red">Ghi chú:</h>
                <h style="color: purple">Các phần tử trong mảng sẽ cách nhau bằng dấu ","</h>)
            </td>
        </tr>
    </table>
</form>

</body>
</html>