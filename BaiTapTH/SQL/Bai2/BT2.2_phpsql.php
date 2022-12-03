
    <style>
        table{
            border-collapse: collapse;
            overflow: auto;
        }
        table th{
            background-color: #e44e81;
        }
        table tr:nth-child(odd){
            background-color: #ffffff;
        }
        table tr:nth-child(even){
            background-color: #d3d8e3;
        }
    </style>

<?php

include './include/conn.php';

$strSQL='SELECT *  FROM khach_hang ';
$result = mysqli_query($conn, $strSQL);
?>
<h2 align="center">THONG TIN KHACH HANG</h2>
<table border="1" style="width: 100%">

    <tr>
        <th>Max khach hang</th>
        <th>Ten</th>
        <th>Phai</th>
        <th>Địa chỉ</th>
        <th>Dien thoai</th>

    </tr>
    <?php while ($row = mysqli_fetch_array($result)) :?>
        <tr>
            <td><?php echo $row["Ma_khach_hang"] ?> </td>
            <td><?php echo $row["Ten_khach_hang"] ?> </td>
            <td ><?php  if($row["Phai"]==0)
                            echo "<img width='50px' src='./Anh/man.png'>";
                        else
                            echo  "<img width='50px' src='./Anh/woman.png'>";
                ?> </td>
            <td><?php echo $row["Dia_chi"] ?> </td>
            <td><?php echo $row["Dien_thoai"] ?> </td>

        </tr>
    <?php endwhile;?>

</table>
<?php mysqli_close($conn) ?>

