<head>
<title>tim_kiem_nang_cao</title>
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
            $ths = $_POST['ths'];
            $tls = $_POST['tls'];
            $query = "SELECT * FROM ((sua as a 
            inner join loai_sua as b on a.Ma_loai_sua = b.Ma_loai_sua)
            inner join hang_sua as c on c.Ma_hang_sua = a.Ma_hang_sua) 
            WHERE Ten_sua LIKE '%$tts%' AND a.Ma_hang_sua LIKE '$ths%' AND a.Ma_loai_sua LIKE '$tls%'";
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
        <div>
            <a>Loại sữa:</a>
            <select name= "tls">
            <option value=''>Tất cả</option>
            <?php
                $query2 = "SELECT * FROM loai_sua";
                $result2 = mysqli_query($conn,$query2);
                while($rows=mysqli_fetch_array($result2))
                {
                    $amls = $rows["Ma_loai_sua"];
                    $atls = $rows["Ten_loai"];
                    echo "<option value=$amls>$atls</option>";
                }
            ?>
            </select>
            <a>Hãng sữa:</a>
            <select name= "ths">
            <option value=''>Tất cả</option>
            <?php
                $query3 = "SELECT * FROM hang_sua";
                $result3 = mysqli_query($conn,$query3);
                while($rows=mysqli_fetch_array($result3))
                {
                    $amhs = $rows["Ma_hang_sua"];
                    $aths = $rows["Ten_hang_sua"];
                    echo "<option value=$amhs>$aths</option>";
                }
            ?>
            </select>
        </div>
            </br>
        <div>
            <a>Tên sữa:</a>
            <input type='text' name='tensua' style='width: 250px;' 
            value='<?php if(isset($tts)) echo $tts; ?>'>
            <input type='submit' name='submit' value='Tìm kiếm' style='background-color: pink;'/>
        </div>
    </form>
    <?php
        if(isset($_POST['submit']))
        {
            if($count>0)
            {
                echo "<div align='center'><b>Có $count sản phẩm được tìm thấy</b></div>";
            }
            else
            {
                echo "<div align='center'><b>Không tìm thấy sản phẩm này</b></div>";
            }
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
