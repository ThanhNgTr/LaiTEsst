<head>
<title>tim_kiem_don_gian</title>
</head>
<style>
    table, tr {
        text-align: center;
    }

    th, td {
    text-align: left;
    padding: 1px;
    }

    h1 {
        text-align: center;
        color: #ff4d4d;
        background-color: pink;
    }
    
    a{
        color: darkred;
    }

    c{
        color: #ff4d4d;
    }
</style>
<body>
    <?php
        $conn = mysqli_connect('localhost', "root", "", "QL_BAN_SUA");
        mysqli_set_charset($conn, 'utf8');
        if(isset($_POST['submit']))
        {
            $tts = $_POST['tensua'];
            $query = "SELECT * FROM ((sua as a 
            inner join loai_sua as b on a.Ma_loai_sua = b.Ma_loai_sua)
            inner join hang_sua as c on c.Ma_hang_sua = a.Ma_hang_sua) 
            WHERE Ten_sua LIKE '%$tts%'";
        }
        else
        {
            $query = "SELECT * FROM ((sua as a 
            inner join loai_sua as b on a.Ma_loai_sua = b.Ma_loai_sua)
            inner join hang_sua as c on c.Ma_hang_sua = a.Ma_hang_sua)";
        }
        $result = mysqli_query($conn,$query);
        $count = mysqli_num_rows($result);
    ?>
    <h1>THÔNG TIN CHI TIẾT CÁC LOẠI SỮA</h1>
    <form action='' method='post' align='center'>
        <a>Tên sữa:</a>
        <input type='text' name='tensua' style='width: 250px;' 
        value='<?php if(isset($tts)) echo $tts; ?>'>
        <input type='submit' name='submit' value='Tìm kiếm' style='background-color: pink;'/>
    </form>
    <?php
        if(isset($_POST['submit']))
        {
            echo "<div align='center'><b>Có $count sản phẩm được tìm thấy</b></div>";
        }
        echo "<table align='center' border='1' cellpadding='2' style='border-collapse:collapse'>";
        while($rows=mysqli_fetch_array($result))
        {
            $img = $rows["Hinh"];
            $ts = $rows["Ten_sua"];
            $hs = $rows["Ten_hang_sua"];
            $ls = $rows["Ten_loai"];
            $ttdd = $rows["TP_Dinh_Duong"];
            $li = $rows["Loi_ich"];
            $tl = $rows["Trong_luong"]." gr";
            $tien = $rows[5]." VNĐ";
            echo "<tr>";
            echo "<tr>
                <td colspan='2'>
                    <p align='center' style='background-color: #FEE0C1;'>
                        <b>
                            <font size='5' color='darkorange'>$ts - $hs</font>
                        </b>
                    </p>
                </td>
            </tr>";
            echo "<td width='150px'><img style='width: 140px; height: 140px;' src='./Anh_Sua/$img'></td>";
            echo "
                <td width='500px'>
                    <b>Thành phần dinh dưỡng:</b></br>$ttdd
                    </br><b>Lợi ích:</b></br>$li
                    </br><b>Trọng lượng: </b><c>$tl</c> - <b>Đơn giá: </b><c>$tien</c>
                </td>
            ";
            echo "</tr>";
        }
        echo "</table></div>";
    ?>
</body>
