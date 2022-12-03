<body>
    <table align='center' border="1">
        <form method="GET" action="./2.7.php">
        <?php
            $conn = mysqli_connect('localhost', "root", "", "QL_BAN_SUA");
            mysqli_set_charset($conn, 'utf8');
            $query = "SELECT * FROM ((sua as a 
            inner join loai_sua as b on a.Ma_loai_sua = b.Ma_loai_sua)
            inner join hang_sua as c on c.Ma_hang_sua = a.Ma_hang_sua) 
            WHERE Ma_sua='$_GET[id]'";
            $result = mysqli_query($conn,$query);
            if(mysqli_num_rows($result)!=0)
            {
                while($rows=mysqli_fetch_array($result))
                {
                    $img = $rows["Hinh"];
                    $tpdd = $rows["TP_Dinh_Duong"];
                    $li = $rows["Loi_ich"];
                    $ts = $rows["Ten_sua"];
                    $hs = $rows["Ten_hang_sua"];
                    $tl = $rows["Trong_luong"]." gr";
                    $tien = $rows["Don_gia"]." VNĐ";
                    echo "
                    <tr bgcolor='#ffeee6'>
                        <td colspan='2' class='header' align='center'>
                            <b style='color: darkorange; font-size: 25px;'>$ts - $hs<b>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img style='width: 180px; height: 180px;' src='./Anh_Sua/$img'>
                        </td>
                        <td width='450px' style='padding: 10px;'>
                            <div><b><i>Thành phần dinh dưỡng:</i></b></div>
                            <div>$tpdd</div>
                            <div><b><i>Lợi ích:</i></b></div>
                            <div>$li</div>
                            <div style='text-align: right;'>
                                <b><i>Trọng lượng:</i></b> $tl - <b><i>Đơn giá:</i></b> $tien
                            </div>
                        </td>
                    </tr>
                    <tr align='right'>
                        <td><a href='./2.7.php'>Quay lại</a></td>
                    </tr>
                    ";
                }
            }
        ?>
        </form>
    </table>
</body>