<div id="tintuc">
	<h3>BAI TAP O DAY</h3>
	<table align="center" border="1">
		<tr>
			<h1>Bài tập phần mảng</h1>
		</tr>
		<tr>
		<?php
			$resource = opendir("BaiTapTH/MCH");
			while(($entry = readdir($resource)) != FALSE){
				if($entry != '.' && $entry != '..')
				{
					echo "<a href='BaiTapTH/MCH/$entry'>$entry</a></br>";
				}
			}
		?>
		</tr>
		<tr>
			<h1>Bài tập phần form</h1>
		</tr>
		<tr>
			<?php
				$resource = opendir("BaiTapTH/PHPvaForm");
				while(($entry = readdir($resource)) != FALSE){
					if($entry != '.' && $entry != '..')
					{
						echo "<a href='BaiTapTH/PHPvaForm/$entry'>$entry</a></br>";
					}
				}
			?>
		</tr>
		<tr>
			<h1>Bài tập phần SQL</h1>
		</tr>
		<tr>
			<?php
				$resource = opendir("BaiTapTH/SQL/Bai2");
				while(($entry = readdir($resource)) != FALSE){
					if($entry != '.' && $entry != '..')
					{
						echo "<a href='BaiTapTH/SQL/Bai2/$entry'>$entry</a></br>";
					}
				}
			?>
		</tr>
	</table>
</div>