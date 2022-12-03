<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tính hình chữ nhật</title>
</head>
<body>
<?php
if (isset($_POST['submit'])){
    $d=$_POST['cd'];;
    $r=$_POST['cr'];;
    if (isset($r) and is_numeric($r) and $r>0 and isset($d) and is_numeric($d) and $d>0)
    {
        if($r < $d)
        {
            $s=round($d*$r);
            $p=round(($d+$r)*2);
        }
        else
        {
            $s="chiều dài phải lớn hơn chiều rộng";
        }   
    }
    else{
        $s="phải là số hoặc không được để trống";
    }
}
if (isset($_POST['reset'])){
    $s="";
    $r="";
    $d="";
}
?>
<form action="" method="post">
    <table align="center" bgcolor="#faebd7" style="width: 400px; height: auto;">
        <tr>
            <td colspan="2" bgcolor="orange" style="text-align: center; font-size: 10px;">
                <h1>DIỆN TÍCH HÌNH CHỮ NHẬT</h1>
            </td>
        </tr>
        <tr>
            <td>Chiều dài</td>
            <td> <input type="text" name="cd" style="width: 180px" 
                        value="<?php if (isset($d)) echo $d;?>"></td>
        </tr>
        <tr>
            <td>Chiều rộng</td>
            <td> <input type="text" name="cr" style="width: 180px" 
                        value="<?php if (isset($r)) echo $r;?>"></td>
        </tr>
        <tr>    
            <td>Diện tích</td>
            <td> <input type="text" name="area" style="background-color: lightpink; width: 180px" readonly
                        value="<?php if (isset($s)) echo $s; else echo "";?>">
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" name="submit" value="Tính">
                <input type="submit" name="reset" value="Clear">
            </td>
        </tr>
    </table>
</form>

</body>
</html>