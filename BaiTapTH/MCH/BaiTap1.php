<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mảng random</title>
</head>
<body>
    <form action="" method="post">
        <table align="center" bgcolor="lightgray" style="width: auto; height: auto;">
            <tr>
                <td colspan="2" bgcolor="#009d8c" style="text-align: center; font-size: 25px; color: white;">
                    Tạo mảng n phần tử random.
                </td>
            </tr>
            <tr>
                <td>Nhập n:</td>
                <td> <input type="text" name="n" style="width: 100px" required
                            value="<?php if (isset($n)) echo $n;?>">
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" name="submit" value="Tạo mảng">
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <?php
                        if (isset($_POST['submit']) and isset($_POST['n'])){
                            $n=$_POST['n'];
                            if($n>0 and is_numeric($n))
                            {
                                echo "Mảng khởi tạo: ";
                                $a = array(null);
                                for($i=0;$i<$n;$i++)
                                {
                                    $a[$i] = rand(-1000,1000);
                                    echo $a[$i]. " ";
                                }
                                echo"<br>";
                                echo"Số phần tử trong mảng có giá trị chẵn: ";
                                $chan = 0;
                                for ($i = 0; $i < $n; $i++)
                                {
                                    if ($a[$i] % 2 == 0)
                                    {
                                        $chan++;
                                    }
                                }echo $chan;
                                echo"<br>";
                                echo"Số phần tử trong mảng < 100: ";
                                $bht = 0;
                                for ($i = 0; $i < $n; $i++)
                                {
                                    if ($a[$i] < 100)
                                    {
                                        $bht++;
                                    }
                                }echo $bht;
                                echo"<br>";
                                echo"Tổng các phần tử trong mảng có giá trị âm: ";
                                $ta = 0;
                                for ($i = 0; $i < $n; $i++)
                                {
                                    if ($a[$i] < 0)
                                    {
                                        $ta+=$a[$i];
                                    }
                                }echo $ta;
                                echo"<br>";
                                echo"Vị trí của phần tử 0 trong mảng: ";
                                for ($i = 0; $i < $n; $i++)
                                {
                                    if ($a[$i] == 0)
                                    {
                                        echo $i. " ";
                                    }
                                }
                                echo "<br>";
                                echo "Mảng sau khi sắp xếp là: ";
                                function sx(&$a,$n)
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
                                    return $a;
                                }
                                $a = sx($a, $n);
                                foreach($a as $item)
                                {
                                    echo $item." ";
                                }
                            }
                            else
                            {
                                echo "n không phải là số nguyên dương";
                            }
                        }
                    ?>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>