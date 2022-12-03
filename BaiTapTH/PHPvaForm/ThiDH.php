<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport"
            content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Kết quả thi đại học</title>
    </head>
    <body>
        <?php
            if (isset($_POST['submit'])){
                $toan=$_POST['toan'];;
                $ly=$_POST['ly'];;
                $hoa=$_POST['hoa'];;
                $dc=$_POST['dc'];;
                $td=$_POST['td'];;
                if (isset($toan) and is_numeric($toan) and $toan>0 and 
                isset($ly) and is_numeric($ly) and $ly>0 and
                isset($hoa) and is_numeric($hoa) and $hoa>0 and 
                isset($dc) and is_numeric($dc) and $dc>0)
                {
                    $td=$toan+$ly+$hoa;
                    if($td>=$dc)
                    {
                        $kq="Đậu";
                    }
                    else
                    {
                        $kq="Rớt";
                    }
                }
                else
                {
                    $kq="phải là số dương hoặc không được để trống";
                }
            }
            if (isset($_POST['reset'])){
                $toan="";
                $ly="";
                $hoa="";
                $dc="";
                $td="";
                $kq="";
            }
        ?>
        <table align="center" bgcolor="#faebd7" style="width: 400px; height: auto;">
            <form action="" method="POST">
                <tr>
                    <td colspan="2" bgcolor="#FF69B4" style="text-align: center; font-size: 25px; color: white;">
                        KẾT QUẢ THI ĐẠI HỌC
                    </td>
                </tr>
                <tr>
                    <td>Toán:</td>
                    <td><input type="text" name="toan" 
                    value="<?php if(isset($toan)) echo $toan;?>"/></td>
                </tr>
                <tr>
                    <td>Lý:</td>
                    <td><input type="text" name="ly" 
                    value="<?php if(isset($ly)) echo $ly;?>"/></td>
                </tr>
                <tr>
                    <td>Hóa:</td>
                    <td><input type="text" name="hoa" 
                    value="<?php if(isset($hoa)) echo $hoa;?>"/></td>
                </tr>
                <tr>
                    <td>Điểm chuẩn:</td>
                    <td><input type="text" name="dc" 
                    value="<?php if(isset($dc)) echo $dc;?>"/></td>
                </tr>
                <tr>
                    <td>Tổng điểm:</td>
                    <td><input type="text" name="td" readonly 
                    value="<?php if(isset($td)) echo $td; else echo "";?>"/></td>
                </tr>
                <tr>
                    <td>Kết quả thi:</td>
                    <td><input type="text" name="kq" readonly 
                    value="<?php if(isset($kq)) echo $kq; else echo "";?>"/></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="submit" value="Xem kết quả"/>
                        <input type="submit" name="reset" value="Clear"/>
                    </td>
                </tr>
            </form>
        </table>
    </body>
</html>