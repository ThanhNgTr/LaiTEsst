<?php
$madm = $_GET['madm'];
//echo "<h1>$madm</h1>";
$sql = "select * from danhmuc where madm=$madm";
$result = mysqli_query($link, $sql);
$row = mysqli_fetch_array($result);
?>
<div class="sanpham"> <?php
                        $sql1 = "select * from sanpham where madm={$_GET['madm']} order by idsp ";
                        $kq = mysqli_query($link, $sql1);
                        $dem = mysqli_num_rows($kq);
                        /*------------Phan trang------------- */
                        // Nếu đã có sẵn số thứ tự của trang thì giữ nguyên (ở đây tôi dùng biến $page)
                        // nếu chưa có, đặt mặc định là 1!
                        if (!isset($_GET['page'])) {
                            $page = 1;
                        } else {
                            $page = $_GET['page'];
                        }
                        // Chọn số kết quả trả về trong mỗi trang mặc định là 10
                        $max_results = 5;
                        // Tính số thứ tự giá trị trả về của đầu trang hiện tại
                        $from = (($page * $max_results) - $max_results);
                        // Chạy 1 MySQL query để hiện thị kết quả trên trang hiện tại
                        $sql = mysqli_query($link, "SELECT * FROM sanpham where madm=$madm order by idsp   DESC  LIMIT $from, $max_results");
                        if ($dem > 0) {
                        ?>
        <h3><?php echo $row['tendm']; ?></h3>
    <?php } ?>
    <div class="sanphamcon">
        <?php while ($rows = mysqli_fetch_array($sql)) { ?>
            <div class="dienthoai">
                <?php
                if ($rows['khuyenmai1'] > 0) {
                ?>
                    <div class="moi">
                        <h3>-<?php echo $rows['khuyenmai1'] ?>%</h3>
                    </div>
                <?php } ?>
                <a href="index.php?content=chitietsp&idsp=<?php echo $rows['idsp'] ?>"><img src=" img/uploads/<?php echo $rows['hinhanh']; ?>"></a><br>
                <p><a href="index.php?content=chitietsp&idsp=<?php echo $rows['idsp'] ?>"><?php echo $rows['tensp']; ?></a></p><br>
                <h4><?php echo number_format(($rows['gia'] * ((100 - $rows['khuyenmai1']) / 100)), 0, ",", "."); ?></h4>
                <div class=" button">
                    <ul>
                        <li>
                            <h1><a href="index.php?content=chitietsp&idsp=<?php echo $rows['idsp'] ?>" class="chitiet"><button>Chi tiết</button></a></h1>
                        </li>
                        <?php
                        if (isset($_SESSION['username'])) {
                            ?>
                            <li>
                                <h5><a href="index.php?content=cart&action=add&idsp=<?php echo $rows['idsp'] ?>"><button>Cho vào giỏ</button></a></h5>
                            </li>
                        <?php }
                        ?>

                    </ul>
                </div><!-- End .button-->
            </div><!-- End .dienthoai-->
        <?php } ?>
    </div>
</div><!-- end san pham-->
</form>
<div id="phantrang_sp">
    <?php
    // Tính tổng kết quả trong toàn DB:
    $total_results = mysqli_fetch_array(mysqli_query($link, "SELECT COUNT(*) as Num FROM sanpham WHERE madm=$madm "));
    // Tính tổng số trang. Làm tròn lên sử dụng ceil()
    $total_pages = ceil($total_results[0] / $max_results);
    // Tạo liên kết đến trang trước trang đang xem
    if ($page > 1) {
        $prev = ($page - 1);
        echo "<a href=\"" . $_SERVER['PHP_SELF'] . "?content=danhmucsp&madm=$madm&page=$prev\"><button class='trang'>Trang trước</button></a>&nbsp;";
    }
    for ($i = 1; $i <= $total_pages; $i++) {
        if (($page) == $i) {
            if ($i > 1) {
                echo "$i&nbsp;";
            }
        } else {
            echo "<a href=\"" . $_SERVER['PHP_SELF'] . "?content=danhmucsp&madm=$madm&page=$i\"><button class='so'>$i</button></a>&nbsp;";
        }
    }
    // Tạo liên kết đến trang tiếp theo
    if ($page < $total_pages) {
        $next = ($page + 1);
        echo "<a href=\"" . $_SERVER['PHP_SELF'] . "?content=danhmucsp&madm=$madm&page=$next\"><button class='trang'>Trang sau</button></a>";
    }
    echo "</center>";
    ?>
</div>