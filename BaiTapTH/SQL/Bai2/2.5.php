<head>
<title>list_don_gian</title>
</head>
<style>
    table, tr {
        text-align: center;
    }

    th, td {
    text-align: left;
    padding: 1px;
    }
</style>
<?php
    $conn = mysqli_connect('localhost', "root", "", "QL_BAN_SUA");
    mysqli_set_charset($conn, 'utf8');
    $query = "SELECT * FROM ((sua as a 
            inner join loai_sua as b on a.Ma_loai_sua = b.Ma_loai_sua)
            inner join hang_sua as c on c.Ma_hang_sua = a.Ma_hang_sua)";
    $result = mysqli_query($conn,$query);
    if(!$result) die  ('<br><b>Query Failed</b>');
    if(mysqli_num_rows($result)!=0)
    {
        echo "<table align='center' width='500px' border='1' cellpadding='2' style='border-collapse:collapse'>
        <tr>
            <td colspan='2'>
                <p align='center' style='background-color: #FEE0C1;'>
                    <b>
                        <font size='5' color='darkorange'>THÔNG TIN CÁC SẢN PHẨM</font>
                    </b>
                </p>
            </td>
        </tr>";
        while($rows=mysqli_fetch_array($result))
        {
            $img = $rows["Hinh"];
            $ts = $rows["Ten_sua"];
            $hs = $rows["Ten_hang_sua"];
            $ls = $rows["Ten_loai"];
            $tl = $rows["Trong_luong"]." gr";
            $tien = $rows[5]." VNĐ";
            echo "<tr>";
            echo "<td width='200px'><img style='width: 110px; height: 110px;' src='./Anh_Sua/$img'></td>";
            echo "<td>
                    <div><b>$ts</b></div>
                    </br> Nhà sản xuất: $hs
                    </br> $ls - $tl - $tien
                </td>
            ";
            echo "</tr>";
        }
        echo "</table>";
    }
?>