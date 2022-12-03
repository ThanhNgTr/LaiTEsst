<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Karaoke</title>
</head>
<body>
<?php
$g1=20000;
$g2=45000;
if (isset($_POST['submit'])){
    $txt_bd=$_POST['bd'];;
    $txt_kt=$_POST['kt'];;
    $abd=explode(":",$txt_bd);
    $akt=explode(":",$txt_kt);
    $bd=$abd[0]+round(num:$abd[1]/60, precision: 1);
    $kt=$akt[0]+round(num:$akt[1]/60, precision: 1);
    if($bd <= $kt)
    {
        if($bd < 10 || $kt > 24)
        {
            $ttt="Đang trong giờ nghỉ";
        }
        else
        {
            if($bd < 17 && $kt > 17)
            {
                $ttt = (17 - $bd) * $g1 + ($kt - 17) * $g2; 
            }
            else if($kt <= 17)
            {
                $ttt = ($kt - $bd) * $g1;
            }
            else 
            {
                $ttt = ($kt - $bd) * $g2;
            }
        }
    }
    else
    {
        $ttt="Giờ kết thúc phải lớn hơn giờ bắt đầu";
    }
}
if (isset($_POST['reset'])){
    $txt_bd=$txt_kt=$ttt="";
}
?>
<form action="" method="post">
    <table align="center" bgcolor="#00b6a2">
        <tr>
            <td colspan="2" bgcolor="#009d8c" style="text-align: center; font-size: 12px; color: white;">
                <h1>Tính tiền karaoke</h1>
            </td>
        </tr>
        <tr>
            <td>Giờ bắt đầu:</td>
            <td> <input type="time" name="bd" style="width: 150px" required
                        value="<?php if (isset($txt_bd)) echo $txt_bd;?>"> (hh:mm)</td>
        </tr>
        <tr>
            <td>Giờ kết thúc:</td>
            <td> <input type="time" name="kt" style="width: 150px" required
                        value="<?php if (isset($txt_kt)) echo $txt_kt;?>"> (hh:mm)</td>
        </tr>
        <tr>    
            <td>Tiền thanh toán:</td>
            <td> <input type="text" name="area" style="background-color: #ffec50; width: 150px" readonly
                        value="<?php if (isset($ttt)) echo $ttt; else echo "";?>"> (VNĐ)</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" name="submit" value="Tính tiền">
                <input type="submit" name="reset" value="Clear">
            </td>
        </tr>
    </table>
</form>

</body>
</html>