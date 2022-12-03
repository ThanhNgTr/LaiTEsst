<?php
    if (isset($_POST['submit'])){
        $name=$_POST['name'];;
        $address=$_POST['address'];;
        $phone=$_POST['phone'];;
        $gender=$_POST['gender'];;
        $country=$_POST['country'];;
        $note=$_POST['note'];;
        echo "Bạn đã nhập thành công, dưới đây là những thông tin mà bạn đã nhập:<br>";
        if (isset($name)!=null and isset($address)!=null and isset($phone)!=null) 
        {
            echo "Họ tên: ".$name."<br>";
            echo "Address: ".$address."<br>";
            echo "Phone: ".$phone."<br>";
            echo "Gender: ".$gender."<br>";
            echo "Country: ".$country."<br>";
            echo "Note: ".$note."<br>";
        }
    }
    if (isset($_POST['reset'])){
        header("Location: ./form.html");
    }
?>
<html>
    <body>
        <form action="" method="POST">
            <input type="submit" name="reset" value="Quay lại">
        </form>
    </body>
</html>