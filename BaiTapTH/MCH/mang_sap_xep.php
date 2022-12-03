<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mảng sắp xếp</title>
</head>
<body>
<?php
if (isset($_POST['submit']) and isset($_POST['nhapmang'])){
    $nhapmang=$_POST['nhapmang'];
    $a = explode(",",$nhapmang);
    $n=count($a);
    function tang_dan($a,$n)
    {
        for($i=0;$i<$n-1;$i++)
        {
            for($j=$i+1;$j<$n;$j++)
            {
                if($a[$i] > $a[$j])
                {
                    $temp = $a[$i];
                    $a[$i] = $a[$j];
                    $a[$j] = $temp;
                }
            }
        }
        foreach($a as $td)
        {
            echo $td." ";
        }
    }
    function giam_dan($a,$n)
    {
        for($i=0;$i<$n-1;$i++)
        {
            for($j=$i+1;$j<$n;$j++)
            {
                if($a[$i] < $a[$j])
                {
                    $temp = $a[$i];
                    $a[$i] = $a[$j];
                    $a[$j] = $temp;
                }
            }
        }
        foreach($a as $td)
        {
            echo $td." ";
        }
    }
}
?>
<form action="" method="post">
    <table align="center" bgcolor="#faebd7" style="width: 300px; height: auto   ;">
        <tr>
            <td colspan="2" bgcolor="orange" style="text-align: center;"><h1>Sắp xếp mảng</h1></td>
        </tr>
        <tr>
            <td>Nhập mảng:</td>
            <td> <input type="text" name="nhapmang" style="width: 150px" required
                        value="<?php if (isset($nhapmang)) echo $nhapmang;?>"><h style="color: red;">(*)</h></td>
        </tr>
        <tr>
            <td style="color: red;">Sau khi sắp xếp:</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="submit" name="submit" value="Sắp xếp tăng/giảm">
            </td>
        </tr>
        <tr>    
            <td>Tăng dần:</td>
            <td> <input type="text" name="td" style="width: 150px" readonly
                    value="<?php if (isset($nhapmang)) tang_dan($a,$n);?>">
            </td>
        </tr>
        <tr>    
            <td>Giảm dần:</td>
            <td> <input type="text" name="gd" style="width: 150px" readonly
                    value="<?php if (isset($nhapmang)) giam_dan($a, $n);?>">
            </td>
        </tr>
    </table>
</form>
</body>
</html>