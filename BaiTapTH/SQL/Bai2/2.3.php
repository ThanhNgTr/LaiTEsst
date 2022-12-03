<head>
    <title>luoi_tuy_bien</title>
</head>
<style>
    tr th{
        text-align: center;
        color: red;
    }

    tr:nth-child(even) {
    background-color: #FEE0C1;
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
    $query = "SELECT * FROM khach_hang";
    $result = mysqli_query($conn,$query);
    echo "<p align='center'><font size='10' color='black'>THÔNG TIN KHÁCH HÀNG</font></p>";
    echo "<table align='center' width='700' border='1' cellpadding='2' style='border-collapse:collapse'>";
    echo "<tr>
        <th>Mã KH</th>
        <th>Tên khách hàng</th>
        <th>Giới tính</th>
        <th>Địa chỉ</th>
        <th>Số điện thoại</th>
    </tr>";
    if(mysqli_num_rows($result)!=0)
    {
        $stt=0; while($rows=mysqli_fetch_row($result))
        {
            $stt++;
            echo "<tr>";
            echo "<td>$rows[0]</td>";
            echo "<td>$rows[1]</td>";
            if($rows[2]==1)
            {
                $temp="woman.png";
            } 
            else $temp="man.png";
            echo "<td>
                <img style='width: 60px; height: 60px;' src='./anh/$temp'>
            </td>";
            echo "<td>$rows[3]</td>";
            echo "<td>$rows[4]</td>";
            echo "</tr>";
        }
    }
?>