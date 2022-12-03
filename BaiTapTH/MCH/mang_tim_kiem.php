<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mảng tìm kiếm</title>
</head>
<body>
<?php
if (isset($_POST['submit']) and isset($_POST['nhapmang']) and isset($_POST['sct'])){
    $nhapmang=$_POST['nhapmang'];
    $sct=$_POST['sct'];
    $a = explode(",",$nhapmang);
    $xuatmang = implode(", ",$a);
    function timkiem($a,$sct,)
    {
        echo "Vị trí của ".$sct." trong mảng là: ";
        for($i=0;$i<count($a);$i++)
        {
            if($sct==$a[$i])
            {
                echo $i.", ";
            }
        }
    }
}
?>
<form action="" method="post">
    <table align="center" bgcolor="lightgray" style="width: 400px; height: auto;">
        <tr>
            <td colspan="2" bgcolor="#009d8c" style="text-align: center; color: white; height: auto; font-size: 10px;">
                <h1>TÌM KIẾM</h1>
            </td>
        </tr>
        <tr>
            <td>Nhập mảng:</td>
            <td> <input type="text" name="nhapmang" style="width: 250px" required
                        value="<?php if (isset($nhapmang)) echo $nhapmang;?>"></td>
        </tr>
        <tr>
            <td>Nhập số cần tìm:</td>
            <td> <input type="text" name="sct" style="width: 60px" required
                        value="<?php if (isset($sct)) echo $sct;?>"></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="submit" name="submit" style="background-color: #adebeb;" value="Tìm kiếm">
            </td>
        </tr>
        <tr>
            <td>Mảng:</td>
            <td> <input type="text" name="a" style="width: 250px" readonly
                        value="<?php if (isset($nhapmang) && isset($sct)) echo $xuatmang;?>"></td>
        </tr>
        <tr>    
            <td>Kết quả tìm kiếm:</td>
            <td> <input type="text" name="kq" style="width: 250px; background-color: #d6f5f5; color: red;" readonly
                        value="<?php if (isset($nhapmang) && isset($sct)) timkiem($a, $sct);?>">
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" style="background-color: #84e1e1;">
                (Các phần tử trong mảng sẽ cách nhau bằng dấu ",")
            </td>
        </tr>
    </table>
</form>

</body>
</html>