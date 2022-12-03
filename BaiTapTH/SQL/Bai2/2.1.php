<head>
    <title>luoi_tho_hang_sua</title>
</head>
<?php
    $conn = mysqli_connect('localhost', "root", "", "QL_BAN_SUA");
    mysqli_set_charset($conn, 'utf8');
    $query = "SELECT * FROM hang_sua";
    $result = mysqli_query($conn,$query);
    echo "<p align='center'><font size='10' color='blue'>THÔNG TIN HÃNG SỮA</font></p>";
    echo "<table align='center' width='700' border='1' cellpadding='2' style='border-collapse:collapse'>";
    echo "<tr>
        <th>Mã HS</th>
        <th>Tên hãng sữa</th>
        <th>Địa chỉ</th>
        <th>Điện thoại</th>
        <th>Email</th>
    </tr>";
    if(mysqli_num_rows($result)!=0)
    {
        $stt=0; while($rows=mysqli_fetch_row($result))
        {
            $stt++;
            echo "<tr>";
            echo "<td>$rows[0]</td>";
            echo "<td>$rows[1]</td>";
            echo "<td>$rows[2]</td>";
            echo "<td>$rows[3]</td>";
            echo "<td>$rows[4]</td>";
            echo "</tr>";
        }
    }
?>