<form action="update_quenmk.php" method="post" name="frm" onsubmit="return quenmk()">
	<div class="quenmk">
		<h2>Quên mật khẩu?</h2>
		<table>
			<tr>
				<td>Tai Khoan <font color="red">*</font>
				</td>
				<td class="input"><input type="text" name="usern" size="40"></td>
			</tr>
			<tr>
				<td>Email của bạn <font color="red">*</font>
				</td>
				<td class="input"><input type="text" name="email" size="40"></td>
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
	function quenmk() {
		if (frm.usern.value == "") {
			alert("Bạn chưa nhập tên tài khoản");
			frm.usern.focus();
			return false;
		}
		if (frm.email.value == "") {
			alert("Bạn chưa nhập email");
			frm.email.focus();
			return false;
		}
		mail = frm.email.value;
		m = /^([A-z0-9])+[@][a-z]+[.][a-z]+[.]*([a-z]+)*$/;
		if (!m.test(mail)) {
			alert("Bạn nhập sai email");
			frm.email.focus();
			return false;
		}
	}
</script>