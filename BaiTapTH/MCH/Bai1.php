<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tính chuỗi số</title>
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
            $xl = "Co ky tu trong day so !";
            break;
        }
    }
    $xl = array_product($a);
}
if (isset($_POST['reset'])){
    $str="";
    $xl="";
}
?>
<form action="" method="post">
    <table align="center" bgcolor="#faebd7" style="width: 300px; height: auto   ;">
        <tr>
            <td colspan="2" bgcolor="orange" style="text-align: center;"><h1>Xử lý chuỗi</h1></td>
        </tr>
        <tr>
            <td>Dãy số</td>
            <td> <input type="text" name="dayso" style="width: 150px" 
                        value="<?php if (isset($dayso)) echo $dayso;?>"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" name="submit" value="Xử lí">
                <input type="submit" name="reset" value="Clear">
            </td>
        </tr>
        <tr>    
            <td>Kết quả</td>
            <td> <input type="text" name="area" style="width: 150px" readonly
                        value="<?php if (isset($xl)) echo $xl;?>">
            </td>
        </tr>
    </table>
</form>

</body>
</html>