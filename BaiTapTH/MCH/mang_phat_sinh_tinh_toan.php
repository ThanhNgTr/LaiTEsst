<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Phát sinh mảng và tính toán</title>
</head>
<body>
    <?php
    if (isset($_POST['submit']) and isset($_POST['n'])){
        $n=$_POST['n'];
        if($n > 0)
        {
            function tao_mang($n)
            {
                static $a=array(null);
                for($i=0;$i<$n;$i++)
                {
                    $a[$i]=rand(0,20);
                }
                return $a;
            }
            function xuat($a)
            {
                $xuat = implode(", ", $a);
                return $xuat;
            }
            function sln($a, $n)
            {
                $max = $a[0];
                for($i=1;$i<$n;$i++)
                {
                    if($a[$i]>$max)
                    {
                        $max=$a[$i];
                    }
                }
                return $max;
            }
            function sbn($a, $n)
            {
                $min = $a[0];
                for($i=1;$i<$n;$i++)
                {
                    if($min>$a[$i])
                    {
                        $min=$a[$i];
                    }
                }
                return $min;
            }
            function tong($a, $n)
            {
                $t=0;
                for($i=0;$i<$n;$i++)
                {
                    $t = $t + $a[$i];
                }
                return $t;
            }
            $a = tao_mang($n);
            $xuat = xuat($a);
            $tong = tong($a, $n);
            $max = sln($a, $n);
            $min = sbn($a, $n);
        }
        else
        {
            $mang = "n phải là số nguyên dương";
        }
    }
    ?>
    <form action="" method="post">
        <table align="center" bgcolor="white" style="width: auto; height: auto;">
            <tr>
                <td colspan="2" bgcolor="purple" style="text-align: center; font-size: 25px; color: white;">
                    PHÁT SINH MẢNG VÀ TÍNH TOÁN
                </td>
            </tr>
            <tr style="background-color: lightpink;">
                <td>Nhập số phần tử:</td>
                <td> <input type="text" name="n" style="width: 160px" required
                            value="<?php if (isset($n)) echo $n;?>">
                </td>
            </tr>
            <tr style="background-color: lightpink;">
                <td></td>
                <td>
                    <input type="submit" name="submit" value="Phát sinh và tính toán" 
                    style="background-color: lightyellow; width: auto;">
                </td>
            </tr>
            <tr>    
                <td>Mảng:</td>
                <td> <input type="text" name="mang" style="width: 220px; background-color: lightcoral;" readonly
                            value="<?php if(isset($n)) echo $xuat;?>">
                </td>
            </tr>
            <tr>    
                <td>GTLN (MAX) trong mảng:</td>
                <td> <input type="text" name="max" style="width: 100px; background-color: lightcoral;" readonly
                            value="<?php if (isset($n)) echo $max;?>">
                </td>
            </tr>
            <tr>    
                <td>GTNN (MIN) trong mảng:</td>
                <td> <input type="text" name="min" style="width: 100px; background-color: lightcoral;" readonly
                            value="<?php if (isset($n)) echo $min;?>">
                </td>
            </tr>
            <tr>    
                <td>Tổng mảng:</td>
                <td> <input type="text" name="tong" style="width: 100px; background-color: lightcoral;" readonly
                            value="<?php if(isset($n)) echo $tong;?>">
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    (<h style="color: red">Ghi chú:</h>
                    <h style="color: purple">Các phần tử trong mảng sẽ có giá trị từ 0 đến 20</h>)
                </td>
            </tr>
        </table>
    </form>
</body>
</html>