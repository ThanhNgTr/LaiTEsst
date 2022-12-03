<form action="" method="post" name="frm" onsubmit="return Psss()">
    <div class="doimatkhau">
        <h2>Quên mật khẩu?</h2>
        <table>
            <tr>
                <td>Mật khẩu cũ <font color="red">*</font>
                </td>
                <td class="input"><input type="password" name="oldpass" size="40"></td>
            </tr>
            <tr>
                <td>Mật khẩu mới <font color="red">*</font>
                </td>
                <td class="input"><input type="password" name="pass" size="40"></td>
            </tr>
            <tr>
                <td>Nhập lại mật khẩu mới <font color="red">*</font>
                </td>
                <td class="input"><input type="password" name="newpass" size="40"></td>
            </tr>
            <tr>
                <td colspan=2 class="btndangky">
                    <button type="submit" name="submit">Tạo mật khẩu mới</button>
                    <button type="reset">Hủy</button>
                </td>
            </tr>
        </table>
    </div>
</form>
<script language="javascript">
    function Psss() {
        if (frm.oldpass.value == "") {
            alert("Bạn chưa nhập mật khẩu cũ");
            frm.oldpass.focus();
            return false;
        }
        if (frm.pass.value == "") {
            alert("Bạn chưa nhập mật khẩu mới");
            frm.pass.focus();
            return false;
        }
        if (frm.newpass.value == "") {
            alert("Bạn chưa nhập tên mật khẩu");
            frm.newpass.focus();
            return false;
        }
        // mk=frm.pass.value;
        // mk1=frm.newpass.value;
        if (frm.pass.value != frm.newpass.value) {
            alert("Mật khẩu mới chưa khớp nhau");
            frm.pass1.focus();
            return false;
        }
    }
</script>
<?php
$id = $_GET['idus'];
if (isset($_POST['submit'])) {
    $sql = mysqli_query($link, "select * FROM nguoidung WHERE idnd='$id'  ");
    $row = mysqli_fetch_array($sql);
    $password = MD5($_POST['oldpass']);
    if ($row['password'] == $password) {
        $newpass = $_POST['pass'];
        $sql1 = mysqli_query($link, "UPDATE nguoidung SET password = MD5('$newpass') WHERE idnd='$id'");
        echo "<script language='javascript'>
                alert('Đổi mật khẩu thành công');
                window.open('index.php','_self', 1);
            </script>";
    } else {
        echo "<script language='javascript'>
                alert('Mật khẩu cũ không hợp lệ');
                window.open('index.php','_self', 1);
            </script>";
    }
}
?>