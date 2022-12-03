<!doctype html>

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

$results_per_page = 5;
$query = "select *from sua";
$result = mysqli_query($conn, $query);
$number_of_result = mysqli_num_rows($result);

$number_of_page = ceil ($number_of_result / $results_per_page);

if (!isset ($_GET['page']) ) {
    $page = 1;
} else {
    $page = $_GET['page'];
}

$page_first_result = ($page-1) * $results_per_page;

$strSQL="SELECT *  FROM sua a, loai_sua b,hang_sua c where a.Ma_loai_sua=b.Ma_loai_sua and c.Ma_hang_sua=a.Ma_hang_sua LIMIT ". $page_first_result . ',' . $results_per_page;
$result = mysqli_query($conn, $strSQL);



?>
<h2 align="center">THONG TIN KHACH HANG</h2>
<table border="1" align="center">

    <tr>
        <th>Ten Sua</th>
        <th>Hang sua</th>
        <th>Loai sua</th>
        <th>Trong luong</th>
        <th>Don gia</th>

    </tr>
    <?php while ($row = mysqli_fetch_array($result)) :?>
        <tr>
            <td><?php echo $row["Ten_sua"] ?> </td>
            <td><?php echo $row["Ten_hang_sua"] ?> </td>
            <td ><?php echo $row["Ten_loai"] ?> </td>
            <td><?php echo $row["Trong_luong"] ?> </td>
            <td><?php echo $row["Don_gia"] ?> </td>

        </tr>
    <?php endwhile;?>

</table>
<br>
<div align="center">
<?php
$pagLink="";
        echo "<a href='BT2.3_phpsql.php?page=".(1)."'> << </a>";
if($page>=2) {
    echo "<a href='BT2.3_phpsql.php?page=".($page-1)."'> < </a>";
}

for ($i=1; $i<=$number_of_page; $i++) {
    if ($i == $page) {
        $pagLink .= "<a class = 'active' href='BT2.3_phpsql.php?page=".$i."'>".$i." </a>";
    }
    else  {
        $pagLink .= "<a href='BT2.3_phpsql.php?page=".$i."'> ".$i." </a>";
    }
};
echo $pagLink;

if($page<$number_of_page){
    echo "<a href='BT2.3_phpsql.php?page=".($page+1)."'> > </a>";
}
echo "<a href='BT2.3_phpsql.php?page=".($number_of_page)."'> >> </a>";
?>
</div>
<?php mysqli_close($conn) ?>

