

<?php
include './include/conn.php';
$strSQL="SELECT *  FROM sua a, loai_sua b,hang_sua c where a.Ma_loai_sua=b.Ma_loai_sua and c.Ma_hang_sua=a.Ma_hang_sua LIMIT 0,8 ";
$result = mysqli_query($conn, $strSQL);
$i=0;
?>
<style>
    table{
        width: 30%;
    }
</style>
<table border="1" align="center"">
    <tr>
        <th colspan="5"><h1>Thong tin cac san pham</h1></th>
    </tr>
    <?php if(mysqli_num_rows($result)!==0) :?>
        <?php foreach ($result as $item ) :?>

            <?php if ($i==0) {echo '<tr>';}  $i++?>
            <td align="center">
                <a href="<?php echo str_replace("2.7","2.7.2",$_SERVER['PHP_SELF']).'?item='.$item['Ma_sua'] ?>">
                    <strong><?php echo $item['Ten_sua'] ?> </strong>
                </a>
                <br>
                <?php echo  $item['Trong_luong'] . '-' . $item['Don_gia'].' VND' ?>
                <br>
                <img src="thuan/Hinh_sua/<?php echo $item['Hinh'] ?> "width="100px" height="100px">
            </td>

            <?php if ($i==4) {echo '</tr>';$i=0;}?>
        <?php endforeach;?>

    <?php endif;?>
</table>
