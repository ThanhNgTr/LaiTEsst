<head>
<title>list_phan_trang</title>
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
    }

    d {
        color: #ff4d4d;
    }
</style>
<?php
    $conn = mysqli_connect('localhost', "root", "", "QL_BAN_SUA");
    mysqli_set_charset($conn, 'utf8');
    $rowsPerPage = 2;
    if (!isset ($_GET['page'])) 
    {
        $_GET['page'] = 1;
    } 
    $offset=($_GET['page']-1)*$rowsPerPage;
    $query = "SELECT * FROM ((sua as a 
            inner join loai_sua as b on a.Ma_loai_sua = b.Ma_loai_sua)
            inner join hang_sua as c on c.Ma_hang_sua = a.Ma_hang_sua) LIMIT $offset, $rowsPerPage";
    $result = mysqli_query($conn,$query);
    if(!$result) die  ('<br><b>Query Failed</b>');
    $numRows = mysqli_num_rows($result);
    $maxPage = ceil(num: $numRows/$rowsPerPage);
    if($numRows<>0)
    {
        echo "<h1>THÔNG TIN CHI TIẾT CÁC LOẠI SỮA</h1>";
        echo "<table align='center' border='1' cellpadding='2' style='border-collapse:collapse'>";
        $temp=$_GET['page']*$rowsPerPage;
        if($temp<=$rowsPerPage) $num=0;
        else $num=$temp-$rowsPerPage;
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
                    <div><b>Thành phần dinh dưỡng:</b>/<div>
                    <div>$ttdd</div>
                    <div><b>Lợi ích:</b></div>
                    <div>$li</div>
                    <div><b>Trọng lượng: </b><d>$tl</d> - <b>Đơn giá: </b><d>$tien</d></div>
                </td>
            ";
            echo "</tr>";
        }
        echo "</table></div>";
        $re = mysqli_query($conn, query:'SELECT * FROM sua');
        $numRows = mysqli_num_rows($re);
        $maxPage = floor(num: $numRows/$rowsPerPage)+1;
        echo "<div align='center'>";
        if($_GET['page']>1)
        {
            echo "<a href=".$_SERVER["PHP_SELF"]."?page=".(1)."> << </a>";
            echo "<a href=".$_SERVER["PHP_SELF"]."?page=".($_GET["page"]-1)."> < </a>";
        }
        for($i=1;$i<=$maxPage;$i++)
        {
            if($i==$_GET["page"])
            {
                echo "<b class='center'>".$i." "."</b>";
            }
            else
            {
                echo "<a href=".$_SERVER['PHP_SELF']."?page=".$i.">".$i." "."</a>";
            }
        }
        if($_GET['page']<$maxPage)
        {
            echo "<a href=".$_SERVER["PHP_SELF"]."?page=".($_GET["page"]+1)."> > </a>";
            echo "<a href=".$_SERVER["PHP_SELF"]."?page=".($_GET["page"]=$maxPage)."> >> </a>";
        }
        echo"</div>";   
    }
    mysqli_close($conn);
?>