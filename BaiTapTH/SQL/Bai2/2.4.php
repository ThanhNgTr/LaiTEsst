<!DOCTYPE html>
<html>
<head>
<title>luoi_phan_trang</title>
</head>
<body>
    <style>
        tr th{
            text-align: center;
            color: brown;
            font-weight: bold;
        }

        tr:nth-child(odd) {
        background-color: #FEE0C1;
        }

        tr:nth-child(even) {
        color: darkred;
        }

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
        $rowsPerPage = 5;
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
            echo "<div style='overflow-x: auto;'>
            <p align='center'><font size='5' color='brown'>THÔNG TIN SỮA</font></p>
            <table align='center' width='700' border='1' cellpadding='2' style='border-collapse:collapse'>
            <tr>
                <th class='center'>Số TT</th>
                <th>Tên sữa</th>
                <th>Hãng sữa</th>
                <th>Loại sữa</th>
                <th>Trọng lượng</th>
                <th>Đơn giá</th>
            </tr>";
            $temp=$_GET['page']*$rowsPerPage;
            if($temp<=$rowsPerPage) $num=0;
            else $num=$temp-$rowsPerPage;
            while($rows=mysqli_fetch_array($result))
            {
                $num++;
                $ts = $rows["Ten_sua"];
                $hs = $rows["Ten_hang_sua"];
                $ls = $rows["Ten_loai"];
                $tl = $rows["Trong_luong"]." gram";
                $tien = number_format($rows[5],'0',',','.')." VNĐ";
                echo "<tr>";
                echo "<td style='text-align: center;'>$num</td>";
                echo "<td>$ts</td>";
                echo "<td>$hs</td>";
                echo "<td>$ls</td>";
                echo "<td>$tl</td>";
                echo "<td>$tien</td>";
                echo "</tr>";
            }
            echo "</table> </div>";
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
</body>
</html>

