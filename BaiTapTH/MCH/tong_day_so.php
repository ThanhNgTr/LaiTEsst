<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tổng dãy số</title>
</head>
<body>
    <?php
    if (isset($_POST['submit']) and isset($_POST['dayso'])){
        $dayso=$_POST['dayso'];
        $a=explode(",",$dayso);
        foreach($a as $value)
        {
            if(!is_numeric(($value)))
            {
                $tong = "Co ky tu trong day so !";
                break;
            }
        }
        $tong = array_sum($a);
    }
    ?>
    <form action="" method="post">
        <table align="center" bgcolor="lightgray" style="width: 400px; height: auto;">
            <tr>
                <td colspan="2" bgcolor="#009d8c" style="text-align: center; font-size: 25px; color: white;">
                    Nhập và tính trên dãy số
                </td>
            </tr>
            <tr>
                <td>Nhập dãy số:</td>
                <td> <input type="text" name="dayso" style="width: 200px" required
                            value="<?php if (isset($dayso)) echo $dayso;?>">
                    <h style="color: red">(*)</h>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" name="submit" value="Tổng dãy số" style="background-color: lightyellow; width: 120px;">
                </td>
            </tr>
            <tr>    
                <td>Tổng dãy số:</td>
                <td> <input type="text" name="area" style="width: 110px; background-color: lightgreen; color: red;" readonly
                            value="<?php if (isset($tong)) echo $tong;?>">
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <h style="color: red">(*)</h>
                    <h>Các số được nhập cách nhau bằng dấu ","</h>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>