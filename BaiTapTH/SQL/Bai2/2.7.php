<head>
<title>list_dang_cot_co_link</title>
</head>
<style>
    table, tr {text-align: center;}
    ul {list-style-type: none; margin-left: -35px;}
    .listsp{width: 160px; height: auto;}
</style>
<body>
    <?php
        $conn = mysqli_connect('localhost', "root", "", "QL_BAN_SUA");
        mysqli_set_charset($conn, 'utf8');
        $query = "SELECT * FROM ((sua as a 
                inner join loai_sua as b on a.Ma_loai_sua = b.Ma_loai_sua)
                inner join hang_sua as c on c.Ma_hang_sua = a.Ma_hang_sua)";
        $result = mysqli_query($conn,$query);
        if(!$result) die  ('<br><b>Query Failed</b>');
    ?>
    <table align='center' border="1">
        <tr bgcolor='#ffeee6'>
            <td colspan='5' class='header'><b style="color: darkorange; font-size: 25px;">THÔNG TIN CÁC SẢN PHẨM<b></td>
        </tr>
        <?php
            if(mysqli_num_rows($result)!=0)
            {
                $sosphang = 5;
                $dem = 0;
                while($rows=mysqli_fetch_array($result))
                {
                    $img = $rows["Hinh"];
                    $ts = $rows["Ten_sua"];
                    $tl = $rows["Trong_luong"]." gr";
                    $tien = $rows["Don_gia"]." VNĐ";
                    $ms = $rows["Ma_sua"];
                    if($dem == $sosphang)
                    {
                        echo "<tr>";
                    }
                    echo "<td class='listsp'>
                        <ul align='center'>
                            <li><b><a href='./list_chi_tiet.php?id=$ms'>$ts</a></b></li>
                            <li>$tl - $tien</li>
                            <li><img style='width: 110px; height: 110px;' src='./Anh_Sua/$img'></li>
                        </ul>
                    </td>";
                    if($dem==$sosphang-1)
                    {
                        echo "</tr>";
                        $dem=0;
                    }
                    else $dem+=1;
                }
            }
        ?>  
    </table>
</body>