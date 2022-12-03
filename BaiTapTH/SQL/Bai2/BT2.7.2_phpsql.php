<?php

if(!isset($_GET['item']))
{
    die("k co san pham do");
}
$id = $_GET['item'];
include './include/conn.php';
$sql = "select * from sua
where sua.Ma_sua ='".$id."'";

$result = mysqli_query($conn,$sql);
$each = mysqli_fetch_array($result);


?>
<!--<style>-->
<!---->
<!--    img{-->
<!--        width: 200px;-->
<!--        height: 200px;-->
<!--    }-->
<!--    table{-->
<!--        width: 100%;-->
<!--        border-collapse: collapse;-->
<!--        border: 5px #bb4c00 groove;-->
<!--    }-->
<!--    td, th {-->
<!--        border: 1px solid black;-->
<!--        text-align: center;-->
<!--        padding: 8px;-->
<!--    }-->
<!--    h1{-->
<!--        text-align: center;-->
<!--        color: #ff6303;-->
<!--        font-weight: bold;-->
<!--    }-->
<!--    tr > td:nth-child(2)-->
<!--    {-->
<!--        text-align: left;-->
<!--    }-->
<!--    p{-->
<!--        text-align: right;-->
<!--    }-->
<!--    th{-->
<!--        background-color: #ffeee6;-->
<!--    }-->
<!--</style>-->
<table align="center" border="1" >
    <tr>
        <th colspan="2"><h1>About</h1></th>
    </tr>
    <?php if(mysqli_num_rows($result)!==0) :?>
        <tr>
            <td>
                <img src="thuan/Hinh_sua/<?php echo $each['Hinh'] ?> " alt=""  srcset="">
            </td>
            <td>
                <strong> Thanh phan dinh duong</strong>
                <br>
                <?php echo $each['TP_Dinh_Duong'] ?>
                <br>
                <strong> loi ich</strong>
                <br>
                <?php echo $each['Loi_ich'] ?>
                <p><strong>trong luong: </strong> <?php echo $each['Trong_luong']?> gr
                    - <strong>Don gia: <?php echo $each['Don_gia'] ?> VND</strong>
                </p>
            </td>
        </tr>
        <tr>
            <td style="text-align: center" > <a href="javascript:window.history.back(-1);">Back</a></td>
            <td></td>
        </tr>
    <?php endif;?>
</table>

