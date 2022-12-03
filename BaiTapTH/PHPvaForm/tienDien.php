<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport"
            content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Tính tiền điện</title>
    </head>
    <body>
        <?php
            if (isset($_POST['submit'])){
                $tch=$_POST['tch'];;
                $csc=$_POST['csc'];;
                $csm=$_POST['csm'];;
                $dg=$_POST['dg'];;
                if (isset($csc) and is_numeric($csc) and $csc>0 and 
                isset($csm) and is_numeric($csm) and $csm>0 and
                isset($dg) and is_numeric($dg) and $dg>0 and isset($tch))
                {
                    if($tch==NULL)
                    {
                        $ttt="Chưa nhập tên chủ hộ";
                    }
                    else
                    {
                        if($csc < $csm)
                        {
                            $ttt=($csm-$csc)*$dg;
                        }
                        else
                        {
                            $ttt="Chỉ số mới phải > chỉ số cũ";
                        }   
                    }
                }
                else{
                    $ttt="phải là số hoặc không được để trống";
                }
            }
            if(isset($dg)==NULL) $dg="20000";
            if (isset($_POST['reset'])){
                $tch="";
                $csc="";
                $csm="";
                $dg="20000";
                $ttt="";
            }
        ?>
        <table align="center" bgcolor="#faebd7" style="width: 400px; height: auto;">
            <form action="tienDien.php" method="POST">
                <tr>
                    <td colspan="2" bgcolor="orange" style="text-align: center; font-size: 25px; color: brown;">
                        THANH TOÁN TIỀN ĐIỆN
                    </td>
                </tr>
                <tr>
                    <td>Tên chủ hộ:</td>
                    <td><input type="text" name="tch" 
                    value="<?php if(isset($tch)) echo $tch;?>"/></td>
                </tr>
                <tr>
                    <td>Chỉ số cũ:</td>
                    <td><input type="text" name="csc" 
                    value="<?php if(isset($csc)) echo $csc;?>"/> (Kw)</td>
                </tr>
                <tr>
                    <td>Chỉ số mới:</td>
                    <td><input type="text" name="csm" 
                    value="<?php if(isset($csm)) echo $csm;?>"/> (Kw)</td>
                </tr>
                <tr>
                    <td>Đơn giá:</td>
                    <td><input type="text" name="dg" 
                    value="<?php if(isset($dg)) echo $dg;?>"/> (VNĐ)</td>
                </tr>
                <tr>
                    <td>Số tiền thanh toán:</td>
                    <td><input type="text" name="ttt" readonly style="background-color: pink;"
                    value="<?php if(isset($ttt)) echo $ttt; else echo "";?>"/> (VNĐ)</td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="submit" value="Tinh"/>
                        <input type="submit" name="reset" value="Clear"/>
                    </td>
                </tr>
            </form>
        </table>
    </body>
</html>